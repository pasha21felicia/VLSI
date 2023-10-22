`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/03/2021 03:07:08 PM
// Design Name: 
// Module Name: UC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module UC (rst, clk, start, aluop, bit_index, selReg_A, selMux1, selMux2,
            selMux3, selMux4, wrReg_A, wrReg_B, selReg_B,
            immVal, NZ, GE, idle, done);

    input rst, clk, start, NZ, GE;
    output reg selMux1, selMux4, wrReg_A, wrReg_B, idle, done;
    output reg [1:0] selReg_A, selMux2, selMux3, selReg_B;
    output reg [2:0] aluop, bit_index;
    output reg [7:0] immVal;    

    reg [7:0] bit_index_i;
    
    parameter nr_stari_fsm1 = 4;    
    reg [nr_stari_fsm1-1:0] stare_curenta_fsm1, stare_urmatoare_fsm1;
    
    localparam 
        IDLE=4'b0001,
        VERIF_INTR=4'b0010,
        CALCUL=4'b0100,        
        DONE=4'b1000;            
    
    parameter nr_stari_fsm2 = 7;    
    reg [nr_stari_fsm2-1:0] stare_curenta_fsm2, stare_urmatoare_fsm2;    
    
    localparam 
        STARE_1=7'b0000001,
        STARE_2=7'b0000010,
        STARE_3=7'b0000100,       
        STARE_4=7'b0001000,
        STARE_5=7'b0010000,
        STARE_6=7'b0100000,
        STARE_7=7'b1000000;
    
    // Stare urmatoare FSM1
    always @(*)
    begin        
        stare_urmatoare_fsm1 = IDLE;       
        case ( stare_curenta_fsm1 )
            IDLE:
                begin
                    if (start==1)
                        stare_urmatoare_fsm1 = VERIF_INTR;
                    else                           
                        stare_urmatoare_fsm1 = IDLE;                                                  
                end
            VERIF_INTR:
                begin
                    if (NZ==1)
                        stare_urmatoare_fsm1 = CALCUL;
                    else                           
                        stare_urmatoare_fsm1 = DONE;
                end                            
            CALCUL:
                begin
                    if ((bit_index_i==0) && (stare_curenta_fsm2 == STARE_7))
                        stare_urmatoare_fsm1 = DONE;
                    else                           
                        stare_urmatoare_fsm1 = CALCUL;
                end            
            DONE:
                begin
                    stare_urmatoare_fsm1 = IDLE; 
                end            
            default:  stare_urmatoare_fsm1 = IDLE;                               
        endcase       
    end
    
    // Stare urmatoare FSM2
    always @(*)
    begin
        stare_urmatoare_fsm2 = STARE_1;
        case ( stare_curenta_fsm2 )
            STARE_1:    
                begin
                    stare_urmatoare_fsm2 = STARE_2;
                end
            STARE_2:    
                begin
                    stare_urmatoare_fsm2 = STARE_3;
                end                            
            STARE_3:    
                begin
                    stare_urmatoare_fsm2 = STARE_4;
                end                    
            STARE_4:    
                begin                     
                    if (GE)
                        stare_urmatoare_fsm2 = STARE_5;
                    else                        
                        stare_urmatoare_fsm2 = STARE_7;
                end                
            STARE_5:    
                begin
                    stare_urmatoare_fsm2 = STARE_6;
                end                
            STARE_6:    
                begin
                    stare_urmatoare_fsm2 = STARE_7;
                end                
            STARE_7:    
                begin
                    if (bit_index_i > 0)
                        stare_urmatoare_fsm2 = STARE_1;
                    else                        
                        stare_urmatoare_fsm2 = STARE_7;
                end                
        endcase        
    end
               
    // Starea curenta
    always @(posedge clk)
    begin
        if (rst)
            begin
                stare_curenta_fsm1 <= IDLE;
                stare_curenta_fsm2 <= STARE_1;
            end                
        else
            begin                
                stare_curenta_fsm1 <= stare_urmatoare_fsm1;
                if (stare_curenta_fsm1 == CALCUL)
                    stare_curenta_fsm2 <= stare_urmatoare_fsm2;
                else                    
                    stare_curenta_fsm2 <= STARE_1;
            end                
    end  
    
    // Decrementare  
    always @(posedge clk)
    begin
        if (rst)
                bit_index_i <= 7;
        else
            begin                
                if ((stare_curenta_fsm1 == CALCUL) && (stare_curenta_fsm2 == STARE_7))
                    bit_index_i <= bit_index_i - 1;
                                    
                if (stare_curenta_fsm1 == DONE)                    
                    bit_index_i <= 7;
            end                    
    end
    
    // Semnale DataPath
    always @(*)
    begin
        
        idle = 1; done = 0; aluop = 0; immVal = 0; selMux1 = 0; selMux2 = 0;
        selMux3 = 0; selMux4 = 0; selReg_A = 0; selReg_B = 0; wrReg_A = 0;
        wrReg_B = 0; bit_index = 7;
        
        // Stari FSM1
        case ( stare_curenta_fsm1 )
            IDLE:
                begin
                    idle = 1; done = 0; selReg_A = 0; selReg_B = 1; aluop = 3'bx;
                    if (start)
                        begin
                            selMux1 = 0;
                            aluop = 0;
                        end
                end
            VERIF_INTR:
                begin
                    idle = 0; done = 0;
                    if (NZ)
                        begin
                            immVal = 0; selMux3 = 2; selMux4 = 0; selReg_A = 0;
                            selReg_B = 1; wrReg_A = 1; wrReg_B = 1;
                        end
                end                            
            CALCUL:
                begin
                    idle = 0; done = 0;
                end            
            DONE:
                begin
                    done = 1; idle = 0; selReg_A = 0; selReg_B = 1;                 
                    wrReg_A = 0; wrReg_B = 0;
                end                                                       
        endcase
        
        if (stare_curenta_fsm1 == CALCUL)
            begin
                case ( stare_curenta_fsm2 )
                    STARE_1:    
                        begin
                            
                            aluop = 1; selReg_B = 1; selMux1 = 1;      
                            wrReg_B = 1; selMux4 = 1;            
                        end
                    STARE_2:    
                        begin
                            aluop = 2; selMux2 = 0; bit_index = bit_index_i;    
                            selMux4 = 1; selReg_B = 2; wrReg_B = 1;                               
                        end                            
                    STARE_3:    
                        begin
                            aluop = 3; bit_index = 0; selMux1 = 1; selReg_B = 1;    
                            wrReg_B = 1; selReg_A = 2; selMux2 = 1; 
                            wrReg_A = 0; selMux4 = 1;            
                        end                    
                    STARE_4:    
                        begin                     
                            aluop = 5; selMux1 = 1; selReg_B = 1; wrReg_B = 0; 
                            wrReg_A = 0; selMux2 = 2;      
                        end                
                    STARE_5:    
                        begin
                            aluop = 4; selMux1 = 1; selReg_B = 1;     
                            wrReg_B = 1; selMux2 = 2; selMux4 = 1;      
                        end                
                    STARE_6:    
                        begin
                            aluop = 6; selMux1 = 1; selReg_B = 0; wrReg_B = 1;       
                            selMux4 = 1; bit_index = bit_index_i; 
                        end                
                    STARE_7:    
                        begin
                            aluop = 3'bx; selReg_A = 2'bx; selReg_B = 2'bx;
                            wrReg_B = 0; wrReg_A = 0;
                        end                
                endcase
            end        
    end     
endmodule