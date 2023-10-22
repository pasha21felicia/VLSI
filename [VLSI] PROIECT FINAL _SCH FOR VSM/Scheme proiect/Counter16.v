// DSCH 3.5
// 16-Apr-19 12:50:49 PM
// C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-Counter16.sch

module VSMCounter16( MainClock,EnableCount,ClearCounter,PC[3],PC[2],PC[1],PC[0]);
 input MainClock,EnableCount,ClearCounter;
 output PC[3],PC[2],PC[1],PC[0];
 wire w4,w10,w11,w12,w13,w14;
 and #(2) and2_1(w4,EnableCount,MainClock);
 not #(2) inv_2(w10,ClearCounter);
 dreg #(3) dreg_3(PC[2],w11,w11,w10,PC[1]);
 dreg #(3) dreg_4(PC[3],w12,w12,w10,PC[2]);
 dreg #(3) dreg_5(PC[0],w13,w13,w10,w4);
 dreg #(3) dreg_6(PC[1],w14,w14,w10,PC[0]);
endmodule

// Simulation parameters in Verilog Format
always
#2000 MainClock=~MainClock;
#200 EnableCount=~EnableCount;
#400 ClearCounter=~ClearCounter;

// Simulation parameters
// MainClock CLK 10 10
// EnableCount CLK 1 1
// ClearCounter CLK 2 2
