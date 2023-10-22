// DSCH 3.5
// 15-Apr-19 6:03:28 PM
// C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-OutRegister.sch

module VSMOutRegister( IB[0],IB[1],IB[2],IB[3],MainClock,invMainReset,LoadOut,Out4,
 Out3,Out2,Out1);
 input IB[0],IB[1],IB[2],IB[3],MainClock,invMainReset,LoadOut;
 output Out4,Out3,Out2,Out1;
 wire w10,w11,w12,w16,w17,w18;
 dreg #(2) dreg_1(Out4,w12,IB[3],w10,w11);
 not #(2) inv_2(w10,invMainReset);
 nand #(2) nand2_3(w11,MainClock,LoadOut);
 dreg #(2) dreg_4(Out3,w16,IB[2],w10,w11);
 dreg #(2) dreg_5(Out2,w17,IB[1],w10,w11);
 dreg #(2) dreg_6(Out1,w18,IB[0],w10,w11);
endmodule

// Simulation parameters in Verilog Format
always
#2000 MainClock=~MainClock;
#200 ~MainReset=~~MainReset;
#400 LoadOut=~LoadOut;

// Simulation parameters
// IB[0] CLK 1 1
// IB[1] CLK 2 2
// IB[2] CLK 4 4
// IB[3] CLK 8 8
// MainClock CLK 10 10
// ~MainReset CLK 16 16
// LoadOut CLK 32 32
