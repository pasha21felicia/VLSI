// DSCH 3.5
// 06/05/2022 20:10:31
// C:\Users\Betina\Desktop\Scheme VLSI\incrementator.sch

module incrementator( A0,S0,A2,High,A3,S1,A1,S3,
 S2,Cout);
 input A0,S0,A2,High,A3,S1,A1,S3;
 input S2;
 output Cout;
 wire w5,w6,w9,w10,w11,w13,w15,w16;
 wire w17,w19,w20,w21,w22,w23,w24,w26;
 wire w27,w28,w29,;
 pmos #(2) pmos_1(S0,vdd,w5); // 0.5u 0.07u
 nmos #(2) nmos_2(S0,vss,w5); // 0.3u 0.07u
 pmos #(2) pmos_3(w5,w6,A0); // 0.5u 0.07u
 nmos #(2) nmos_4(w5,High,A0); // 0.3u 0.07u
 nmos #(2) nmos_5(w6,vss,High); // 0.3u 0.07u
 pmos #(2) pmos_6(w6,vdd,High); // 0.5u 0.07u
 pmos #(3) pmos_7(w10,vdd,w9); // 0.5u 0.07u
 pmos #(2) pmos_8(S1,vdd,w11); // 0.5u 0.07u
 nmos #(2) nmos_9(S1,vss,w11); // 0.3u 0.07u
 pmos #(2) pmos_10(w11,w13,A1); // 0.5u 0.07u
 nmos #(2) nmos_11(w11,w15,A1); // 0.3u 0.07u
 nmos #(2) nmos_12(w13,vss,w15); // 0.3u 0.07u
 pmos #(2) pmos_13(w13,vdd,w15); // 0.5u 0.07u
 pmos #(3) pmos_14(w9,vdd,A1); // 0.5u 0.07u
 nmos #(1) nmos_15(w16,vss,A1); // 0.3u 0.07u
 pmos #(2) pmos_16(S2,vdd,w17); // 0.5u 0.07u
 nmos #(2) nmos_17(S2,vss,w17); // 0.3u 0.07u
 pmos #(2) pmos_18(w17,w19,A2); // 0.5u 0.07u
 nmos #(2) nmos_19(w17,w10,A2); // 0.3u 0.07u
 nmos #(2) nmos_20(w19,vss,w10); // 0.3u 0.07u
 pmos #(2) pmos_21(w19,vdd,w10); // 0.5u 0.07u
 nmos #(3) nmos_22(w22,w20,w21); // 0.3u 0.07u
 pmos #(3) pmos_23(w9,vdd,w15); // 0.5u 0.07u
 pmos #(2) pmos_24(w23,vdd,w21); // 0.5u 0.07u
 nmos #(2) nmos_25(w23,vss,w21); // 0.3u 0.07u
 nmos #(2) nmos_26(w24,w21,A3); // 0.3u 0.07u
 pmos #(2) pmos_27(w24,w23,A3); // 0.5u 0.07u
 nmos #(2) nmos_28(S3,vss,w24); // 0.3u 0.07u
 pmos #(2) pmos_29(S3,vdd,w24); // 0.5u 0.07u
 pmos #(3) pmos_30(w22,vdd,w21); // 0.5u 0.07u
 nmos #(3) nmos_31(w27,w26,High); // 0.3u 0.07u
 pmos #(3) pmos_32(w27,vdd,High); // 0.5u 0.07u
 nmos #(1) nmos_33(w26,vss,A0); // 0.3u 0.07u
 nmos #(3) nmos_34(w15,vss,w27); // 0.3u 0.07u
 pmos #(3) pmos_35(w15,vdd,w27); // 0.5u 0.07u
 pmos #(3) pmos_36(w27,vdd,A0); // 0.5u 0.07u
 nmos #(3) nmos_37(w29,w28,w10); // 0.3u 0.07u
 pmos #(3) pmos_38(w29,vdd,w10); // 0.5u 0.07u
 nmos #(1) nmos_39(w28,vss,A2); // 0.3u 0.07u
 nmos #(3) nmos_40(w21,vss,w29); // 0.3u 0.07u
 pmos #(3) pmos_41(w21,vdd,w29); // 0.5u 0.07u
 pmos #(3) pmos_42(w29,vdd,A2); // 0.5u 0.07u
 nmos #(3) nmos_43(w9,w16,w15); // 0.3u 0.07u
 pmos #(3) pmos_44(w22,vdd,A3); // 0.5u 0.07u
 pmos #(2) pmos_45(Cout,vdd,w22); // 0.5u 0.07u
 nmos #(2) nmos_46(Cout,vss,w22); // 0.3u 0.07u
 nmos #(1) nmos_47(w20,vss,A3); // 0.3u 0.07u
 nmos #(3) nmos_48(w10,vss,w9); // 0.3u 0.07u
endmodule

// Simulation parameters in Verilog Format
always
#200 A0=~A0;
#400 S0=~S0;
#800 A2=~A2;
#1600 High=~High;
#3200 A3=~A3;
#6400 S1=~S1;
#12800 A1=~A1;
#25600 S3=~S3;
#51200 S2=~S2;

// Simulation parameters
// A0 CLK 1 1
// S0 CLK 2 2
// A2 CLK 4 4
// High CLK 8 8
// A3 CLK 16 16
// S1 CLK 32 32
// A1 CLK 64 64
// S3 CLK 128 128
// S2 CLK 256 256
