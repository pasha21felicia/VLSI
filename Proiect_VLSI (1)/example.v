// DSCH 3.5
// 5/19/2021 8:44:37 PM
// example

module example( kbd2[1],kbd2[2],kbd2[3],kbd2[4],kbd1[1],kbd1[2],kbd1[3],kbd1[4],
 sum[3],sum[2],sum[1],sum[0],carry);
 input kbd2[1],kbd2[2],kbd2[3],kbd2[4],kbd1[1],kbd1[2],kbd1[3],kbd1[4];
 output sum[3],sum[2],sum[1],sum[0],carry;
 wire w4,w10,w13,w18,w19,w20,w21,w22;
 wire w23,w24,w25,w26,w27,w28,w29,w30;
 wire w31,w32,w33;
 xor #(2) xor2_1_1(w18,vss,kbd1[1]);
 xor #(2) xor2_2_2(sum[0],w18,kbd2[1]);
 nand #(1) nand2_3_3(w19,kbd1[1],vss);
 nand #(1) nand2_4_4(w20,kbd2[1],kbd1[1]);
 nand #(1) nand2_5_5(w21,vss,kbd2[1]);
 nand #(2) nand3_6_6(w4,w19,w20,w21);
 xor #(2) xor2_1_7(w22,w4,kbd1[2]);
 xor #(2) xor2_2_8(sum[1],w22,kbd2[2]);
 nand #(1) nand2_3_9(w23,kbd1[2],w4);
 nand #(1) nand2_4_10(w24,kbd2[2],kbd1[2]);
 nand #(1) nand2_5_11(w25,w4,kbd2[2]);
 nand #(2) nand3_6_12(w10,w23,w24,w25);
 xor #(2) xor2_1_13(w26,w10,kbd1[3]);
 xor #(2) xor2_2_14(sum[2],w26,kbd2[3]);
 nand #(1) nand2_3_15(w27,kbd1[3],w10);
 nand #(1) nand2_4_16(w28,kbd2[3],kbd1[3]);
 nand #(1) nand2_5_17(w29,w10,kbd2[3]);
 nand #(2) nand3_6_18(w13,w27,w28,w29);
 xor #(2) xor2_1_19(w30,w13,kbd1[4]);
 xor #(2) xor2_2_20(sum[3],w30,kbd2[4]);
 nand #(1) nand2_3_21(w31,kbd1[4],w13);
 nand #(1) nand2_4_22(w32,kbd2[4],kbd1[4]);
 nand #(1) nand2_5_23(w33,w13,kbd2[4]);
 nand #(1) nand3_6_24(carry,w31,w32,w33);
endmodule

// Simulation parameters in Verilog Format

// Simulation parameters
// kbd2[1] CLK 1 1
// kbd2[2] CLK 2 2
// kbd2[3] CLK 4 4
// kbd2[4] CLK 8 8
// kbd1[1] CLK 16 16
// kbd1[2] CLK 32 32
// kbd1[3] CLK 64 64
// kbd1[4] CLK 128 128
