// DSCH3
// 5/24/2009 9:09:19 PM
// C:\vlsi-tema curs\accumulatorB.sch

module accumulatorB( MainClock,LatchB,ClearB,B0,B1,B2,B3,AluB2,
 AluB1,AluB0,AluB3);
 input MainClock,LatchB,ClearB,B0,B1,B2,B3;
 output AluB2,AluB1,AluB0,AluB3;
 wire w7,w9,w12,w14,w16,w18;
 and #(37) and2_1(w7,MainClock,LatchB);
 not #(31) inv_2(w9,ClearB);
 dreg #(12) dreg_3(AluB3,w12,B3,w9,w7);
 dreg #(12) dreg_4(AluB2,w14,B2,w9,w7);
 dreg #(12) dreg_5(AluB1,w16,B1,w9,w7);
 dreg #(12) dreg_6(AluB0,w18,B0,w9,w7);
endmodule

// Simulation parameters in Verilog Format
always
#1000 Main Clock=~Main Clock;
#1000 LatchB=~LatchB;
#2000 ClearB=~ClearB;

// Simulation parameters
// Main Clock CLK 10.000 10.000
// LatchB CLK 10 10
// ClearB CLK 20 20
// B0 CLK 40 40
// B1 CLK 80 80
// B2 GND
// B3 GND
