`timescale 1ns / 1ps

//RegisterFile va avea 4 pozitii. Fiecare pozitie are 8 biti - va fi un dual port RAM ca la CN1
//Este posibil astfel sa scriem/citim 2 registre la acelasi moment de timp

module RegisterFile(
    input clk,
    input wr_enA,
    input [1:0] wr_addrA,
    input [1:0] rd_addrA,
    input [7:0] dataIn_A,
    output reg [7:0] dataOut_A,
    input wr_enB,
    input [1:0] wr_addrB,
    input [1:0] rd_addrB,
    input [7:0] dataIn_B,
    output reg [7:0] dataOut_B
    );
    // Ofera posibilitatea de a scrie/citi 2 registre la acelasi moment de timp
    reg [7:0] reg0, reg1, reg2, reg3;
    // Register File are 4 pozitii, fiecare pe 8 biti
    always @(*) 
    begin
        case (rd_addrA)
            0: dataOut_A = reg0;
            1: dataOut_A = reg1;        
            2: dataOut_A = reg2;
            3: dataOut_A = reg3;
            default: dataOut_A = {8{1'bx}};
        endcase
    end
    
    always @(*) 
    begin
        case (rd_addrB)
            0: dataOut_B = reg0;
            1: dataOut_B = reg1;        
            2: dataOut_B = reg2;
            3: dataOut_B = reg3;
            default: dataOut_B = {8{1'bx}};
        endcase
    end
    
    always @(posedge clk)
    begin
        if (wr_enA) 
            case (wr_addrA) 
                0: reg0 <= dataIn_A;
                1: reg1 <= dataIn_A;        
                2: reg2 <= dataIn_A;
                3: reg3 <= dataIn_A;
            endcase
        
        if (wr_enB) 
            case (wr_addrB) 
                0: reg0 <= dataIn_B;
                1: reg1 <= dataIn_B;        
                2: reg2 <= dataIn_B;
                3: reg3 <= dataIn_B;
            endcase        
    end
endmodule
