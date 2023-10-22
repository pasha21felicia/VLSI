// DSCH 3.5
// 15-Apr-19 12:43:19 PM
// C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-AccumulatorB.sch

module VSMAccumulatorB( Kbd[0],Kbd[1],Kbd[2],Kbd[3],ClearB,LatchB,MainClock,AluB3,
 AluB2,AluB1,AluB0);
 input Kbd[0],Kbd[1],Kbd[2],Kbd[3],ClearB,LatchB,MainClock;
 output AluB3,AluB2,AluB1,AluB0;
 wire w12,w13,w15,w16,w17,w18;
 not #(2) inv_1(w12,ClearB);
 and #(3) and2_2(w13,MainClock,LatchB);
 dreg #(2) dreg_3(AluB0,w15,Kbd[0],w12,w13);
 dreg #(2) dreg_4(AluB3,w16,Kbd[3],w12,w13);
 dreg #(2) dreg_5(AluB2,w17,Kbd[2],w12,w13);
 dreg #(2) dreg_6(AluB1,w18,Kbd[1],w12,w13);
endmodule

// Simulation parameters in Verilog Format
always
#200 ClearB=~ClearB;
#400 LatchB=~LatchB;
#2000 MainClock=~MainClock;

// Simulation parameters
// Kbd[0] CLK 1 1
// Kbd[1] CLK 2 2
// Kbd[2] CLK 4 4
// Kbd[3] CLK 8 8
// ClearB CLK 16 16
// LatchB CLK 32 32
// MainClock CLK 10 10
