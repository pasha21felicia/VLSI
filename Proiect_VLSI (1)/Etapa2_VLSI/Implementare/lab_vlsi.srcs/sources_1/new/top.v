`timescale 1ns / 1ps

module top (clk, rst, start, idle, done, N, D, Q, R);
    
    input clk, rst, start;
    input [7:0] N, D; 
    output idle, done;
    output [7:0] Q, R;

wire w_sel_mux1, w_sel_mux4, w_wr_reg_port_A, w_wr_reg_port_B, w_NZ, w_GE;
wire [1:0] w_sel_reg_A, w_sel_mux2, w_sel_mux3, w_sel_reg_B;
wire [2:0] w_aluop, w_bit_index;
wire [7:0] w_immVal;

DataPath instanta3(.clk(clk), .aluop(w_aluop), .bit_index(w_bit_index),
    .selReg_A(w_sel_reg_A), .selMux1(w_sel_mux1), .selMux2(w_sel_mux2),
    .selMux3(w_sel_mux3), .selMux4(w_sel_mux4), .wrReg_A(w_wr_reg_port_A),
    .wrReg_B(w_wr_reg_port_B), .selReg_B(w_sel_reg_B), .N(N), .D(D), .immVal(w_immVal),
    .Q(Q), .R(R), .NZ(w_NZ), .GE(w_GE));

UC instanta4 (.rst(rst), .clk(clk), .start(start), .aluop(w_aluop),
    .bit_index(w_bit_index), .selReg_A(w_sel_reg_A), .selMux1(w_sel_mux1),
    .selMux2(w_sel_mux2), .selMux3(w_sel_mux3), .selMux4(w_sel_mux4),
    .wrReg_A(w_wr_reg_port_A), .wrReg_B(w_wr_reg_port_B), .selReg_B(w_sel_reg_B),    
    .immVal(w_immVal), .NZ(w_NZ), .GE(w_GE), .idle(idle), .done(done));
endmodule

