// DSCH3
// 5/24/2009 9:07:24 PM
// C:\vlsi-tema curs\accumulatorA.sch

module accumulatorA( EnableA,A0,A1,A2,A3,MainClock,ClearA,LatchA,
 B3,B2,B1,B0,Alu0,Alu1,Alu2,Alu3);
 input EnableA,A0,A1,A2,A3,MainClock,ClearA,LatchA;
 output B3,B2,B1,B0,Alu0,Alu1,Alu2,Alu3;
 wire w2,w5,w7,w9,w12,w13,;
 notif1 #(10) notif1_1(B3,w2,EnableA);
 notif1 #(10) notif1_2(B2,w5,EnableA);
 notif1 #(10) notif1_3(B1,w7,EnableA);
 notif1 #(10) notif1_4(B0,w9,EnableA);
 dreg #(19) dreg_5(Alu3,w2,A3,w12,w13);
 dreg #(19) dreg_6(Alu2,w5,A2,w12,w13);
 dreg #(19) dreg_7(Alu1,w7,A1,w12,w13);
 dreg #(19) dreg_8(Alu0,w9,A0,w12,w13);
 not #(31) inv_9(w12,ClearA);
 and #(37) and2_10(w13,MainClock,LatchA);
endmodule

// Simulation parameters in Verilog Format
always
#1000 EnableA=~EnableA;
#1000 Main Clock=~Main Clock;
#2000 ClearA=~ClearA;
#4000 LatchA=~LatchA;

// Simulation parameters
// EnableA CLK 10 10
// A0 CLK 20 20
// A1 CLK 40 40
// A2 GND
// A3 GND
// Main Clock CLK 10.000 10.000
// ClearA CLK 80 80
// LatchA CLK 160 160
