`timescale 1ns / 1ps

module DataPath(clk,
                aluop,
                bit_index,
                selReg_A,
                selMux1, selMux2, selMux3, selMux4,
                wrReg_A, wrReg_B,
                selReg_B,
                N, D,
                immVal,
                Q, R,
                NZ, GE);
    
    input clk, selMux1, selMux4, wrReg_A, wrReg_B;
    input [1:0] selReg_A, selMux2, selMux3, selReg_B;
    input [2:0] aluop, bit_index;
    input [7:0] N, D, immVal;
    output wire [7:0] Q, R;
    output reg NZ, GE;
    
    // Data Path => ALU, Registers, MUX
    wire [7:0] alu_A, alu_C, alu_result;    
    ALU instanta1 (.A(alu_A), .B({5'b0, bit_index}), .C(alu_C), .op(aluop),
        .D(alu_result)
    );
   
    wire [7:0] regOut_A, regIn_A, regIn_B;
    RegisterFile instanta2(
        .clk(clk),
        .wr_enA(wrReg_A),
        .wr_addrA(selReg_A),
        .rd_addrA(selReg_A),
        .dataIn_A(regIn_A),
        .dataOut_A(Q),
        .wr_enB(wrReg_B),
        .wr_addrB(selReg_B),
        .rd_addrB(selReg_B),
        .dataIn_B(regIn_B),
        .dataOut_B(R));
    
    assign alu_A = ( selMux1 == 1 )? R : D;
    assign alu_C = ( selMux2 == 1 )? Q : ( selMux2 == 0 )? N : ( selMux2 == 2 )? D : {8{1'bx}}; 
    assign regIn_A = ( selMux3 == 0 )? N : ( selMux3 == 1 )? D : ( selMux3 == 2 )? immVal : {8{1'bx}};
    assign regIn_B = ( selMux4 == 1 )? alu_result : immVal;                        
    
    always @(*)
    begin
        NZ = 0; GE = 0;
        // NZ se foloseste pentru a verifica faptul ca numitorul nu este 0
        // folosit in primul pas de D != 0
        if ((aluop == 0) && (alu_result == 1))
            NZ = 1;
        // GZ se foloseste la compararea restului cu numitorul 
        // R >= D
        if ((aluop == 5) && (alu_result == 1))
            GE = 1;           
    end
endmodule
