// DSCH3
// 5/24/2009 9:37:06 PM
// C:\vlsi-tema curs\outRegister.sch

module outRegister( kbd1,kbd2,kbd3,kbd4,MainClock,invMainReset,LoadOut,out2,
 out3,out1,out0);
 input kbd1,kbd2,kbd3,kbd4,MainClock,invMainReset,LoadOut;
 output out2,out3,out1,out0;
 wire w3,w4,w6,w11,w13,w15,;
 dreg #(12) dreg_1(out2,w6,kbd3,w3,w4);
 dreg #(12) dreg_2(out3,w11,kbd4,w3,w4);
 dreg #(12) dreg_3(out1,w13,kbd2,w3,w4);
 dreg #(12) dreg_4(out0,w15,kbd1,w3,w4);
 not #(31) inv_5(w3,invMainReset);
 nand #(34) nand2_6(w4,MainClock,LoadOut);
endmodule

// Simulation parameters in Verilog Format
always
#1000 MainClock=~MainClock;
#1000 ~MainReset=~~MainReset;
#2000 LoadOut=~LoadOut;

// Simulation parameters
// kbd1 CLK 10 10
// kbd2 CLK 20 20
// kbd3 GND
// kbd4 GND
// MainClock CLK 10.000 10.000
// ~MainReset CLK 40 40
// LoadOut CLK 80 80
