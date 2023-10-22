// DSCH 3.5
// 15-Apr-19 12:42:29 PM
// C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-AccumulatorA.sch

module VSMAccumulatorA( A[0],A[1],A[2],A[3],LatchA,ClearA,EnableA,MainClock,
 AluA2,AluA3,AluA1,AluA0,B0,B1,B2,B3);
 input A[0],A[1],A[2],A[3],LatchA,ClearA,EnableA,MainClock;
 output AluA2,AluA3,AluA1,AluA0,B0,B1,B2,B3;
 wire w13,w14,w15,w16,w18,w19,;
 dreg #(3) dreg_1(AluA3,w15,A[3],w13,w14);
 dreg #(3) dreg_2(AluA2,w16,A[2],w13,w14);
 and #(3) and2_3(w14,MainClock,LatchA);
 not #(2) inv_4(w13,ClearA);
 dreg #(3) dreg_5(AluA1,w18,A[1],w13,w14);
 dreg #(3) dreg_6(AluA0,w19,A[0],w13,w14);
 notif1 #(1) notif1_7(B0,w19,EnableA);
 notif1 #(1) notif1_8(B1,w18,EnableA);
 notif1 #(1) notif1_9(B2,w16,EnableA);
 notif1 #(1) notif1_10(B3,w15,EnableA);
endmodule

// Simulation parameters in Verilog Format
always
#200 LatchA=~LatchA;
#400 ClearA=~ClearA;
#800 EnableA=~EnableA;
#2000 MainClock=~MainClock;

// Simulation parameters
// A[0] CLK 1 1
// A[1] CLK 2 2
// A[2] CLK 4 4
// A[3] CLK 8 8
// LatchA CLK 16 16
// ClearA CLK 32 32
// EnableA CLK 64 64
// MainClock CLK 10 10
