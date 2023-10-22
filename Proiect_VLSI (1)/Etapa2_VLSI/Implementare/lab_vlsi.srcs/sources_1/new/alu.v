`timescale 1ns / 1ps

module ALU (
    input [7:0] A,
    input [7:0] B,
    input [7:0] C, 
    input [2:0] op,
    output reg [7:0] D
    );

    reg [7:0] aux = 0;
    
    always @(*)
    begin
        aux = 0;
        case (op)
            0: D = (A != 0);
            1: D = A << 1;
            2: D = C[B];
            3: begin
                    aux = A;
                    aux[B] = C;
                    D = aux;
               end
            4: D = (A - C);
            5: D = (A >= C);   
            6: begin
                    aux = A; 
                    aux[B] = 1;
                    D = aux;
               end            
            default: D = 0;                                                                
        endcase     
    end    
endmodule