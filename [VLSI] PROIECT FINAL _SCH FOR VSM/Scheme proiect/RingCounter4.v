// DSCH 3.5
// 16-Apr-19 12:49:45 PM
// C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-RingCounter4.sch

module VSMRingCounter4( Phase_Count,invClear,Phase3,Phase1,Phase2,Phase0);
 input Phase_Count,invClear;
 output Phase3,Phase1,Phase2,Phase0;
 wire w2,w3,w5,w6,w8,w9,w12,w13;
 wire w14,;
 xor #(2) xor2_1(Phase3,w2,w3);
 dreg #(2) dreg_2(w8,w9,w5,w6,Phase_Count);
 xor #(2) xor2_3(Phase2,w8,w2);
 xor #(2) xor2_4(Phase1,w5,w8);
 dreg #(3) dreg_5(w5,w13,w12,w6,Phase_Count);
 dreg #(2) dreg_6(w2,w14,w8,w6,Phase_Count);
 dreg #(3) dreg_7(w3,w12,w2,w6,Phase_Count);
 xor #(2) xor2_8(Phase0,w3,w13);
 not #(2) inv_9(w6,invClear);
endmodule

// Simulation parameters in Verilog Format
always
#2000 Phase_Count=~Phase_Count;
#200 ~Clear=~~Clear;

// Simulation parameters
// Phase_Count CLK 10 10
// ~Clear CLK 1 1
