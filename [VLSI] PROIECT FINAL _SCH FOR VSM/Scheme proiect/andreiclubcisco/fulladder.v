// DSCH3
// 5/24/2009 8:42:36 PM
// C:\vlsi-tema curs\fulladder.sch

module fulladder( C,B,A,Sum,Carry);
 input C,B,A;
 output Sum,Carry;
 wire w5,w6,w9,w10;
 or #(16) or2_1(Carry,w5,w6);
 and #(16) and2_2(w5,B,A);
 xor #(16) xor2_3(Sum,w9,C);
 xor #(16) xor2_4(w9,A,B);
 or #(16) or2_5(w10,A,B);
 and #(16) and2_6(w6,C,w10);
endmodule

// Simulation parameters in Verilog Format
always
#1000 C=~C;
#2000 B=~B;
#4000 A=~A;

// Simulation parameters
// C CLK 10 10
// B CLK 20 20
// A CLK 40 40
