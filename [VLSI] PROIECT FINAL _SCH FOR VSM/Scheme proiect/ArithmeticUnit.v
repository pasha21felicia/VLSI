// DSCH 3.5
// 15-Apr-19 1:45:39 PM
// C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-ArithmeticUnit.sch

module VSMArithmeticUnit( A[0],A[1],A[2],A[3],B[0],B[1],B[2],B[3],
 EnableAlu,AddSub,Carry,IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0]);
 input A[0],A[1],A[2],A[3],B[0],B[1],B[2],B[3];
 input EnableAlu,AddSub;
 output Carry,IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0];
 wire w2,w5,w7,w10,w12,w14,w21,w24;
 wire w25,w26,w27,w28,w29,w30,w31,w32;
 wire w33,w34,w35,w36;
 bufif1 #(1) bufif1_1(IB_Alu[0],w2,EnableAlu);
 bufif1 #(1) bufif1_2(IB_Alu[1],w5,EnableAlu);
 bufif1 #(1) bufif1_3(IB_Alu[2],w7,EnableAlu);
 not #(1) inv_4(w10,A[3]);
 mux #(2) mux_5(w12,A[3],w10,AddSub);
 not #(1) inv_6(w14,A[0]);
 bufif1 #(1) bufif1_7(IB_Alu[3],w21,EnableAlu);
 mux #(1) mux_8(w29,vss,vdd,AddSub);
 mux #(2) mux_9(w30,A[0],w14,AddSub);
 mux #(2) mux_10(w28,A[1],w31,AddSub);
 mux #(2) mux_11(w25,A[2],w32,AddSub);
 not #(1) inv_12(w32,A[2]);
 not #(1) inv_13(w31,A[1]);
 assign w26=(B[2]&w25)|(w24&(B[2]|w25))
 xor #(1) xor2_1_14(w33,B[2],w25);
 xor #(1) xor2_2_15(w7,w33,w24);
 assign w24=(B[1]&w28)|(w27&(B[1]|w28))
 xor #(1) xor2_1_16(w34,B[1],w28);
 xor #(1) xor2_2_17(w5,w34,w27);
 assign w27=(B[0]&w30)|(w29&(B[0]|w30))
 xor #(1) xor2_1_18(w35,B[0],w30);
 xor #(1) xor2_2_19(w2,w35,w29);
 assign Carry=(B[3]&w12)|(w26&(B[3]|w12))
 xor #(1) xor2_1_20(w36,B[3],w12);
 xor #(1) xor2_2_21(w21,w36,w26);
endmodule

// Simulation parameters in Verilog Format
always
#200 EnableAlu=~EnableAlu;
#400 AddSub=~AddSub;

// Simulation parameters
// A[0] CLK 1 1
// A[1] CLK 2 2
// A[2] CLK 4 4
// A[3] CLK 8 8
// B[0] CLK 16 16
// B[1] CLK 32 32
// B[2] CLK 64 64
// B[3] CLK 128 128
// EnableAlu CLK 256 256
// AddSub CLK 512 512
