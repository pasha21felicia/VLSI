// DSCH 3.5
// 06/05/2022 12:17:47
// C:\Users\Betina\Desktop\Scheme VLSI\BinaryToGrayConverter.sch

module BinaryToGrayConverter( A,B,C,D,G3,G4,G2,G1);
 input A,B,C,D;
 output G3,G4,G2,G1;
 wire w3,w4,w8,w9,w13,w14;
 pmos #(2) pmos_1(G3,vdd,w3); // 0.5u 0.07u
 nmos #(2) nmos_2(G3,vss,w3); // 0.3u 0.07u
 pmos #(2) pmos_3(w3,w4,B); // 0.5u 0.07u
 nmos #(2) nmos_4(w3,G4,B); // 0.3u 0.07u
 nmos #(2) nmos_5(w4,vss,G4); // 0.3u 0.07u
 pmos #(2) pmos_6(w4,vdd,G4); // 0.5u 0.07u
 pmos #(2) pmos_7(w8,vdd,B); // 0.5u 0.07u
 nmos #(2) nmos_8(w8,vss,B); // 0.3u 0.07u
 nmos #(2) nmos_9(w9,B,C); // 0.3u 0.07u
 pmos #(2) pmos_10(w9,w8,C); // 0.5u 0.07u
 nmos #(2) nmos_11(G2,vss,w9); // 0.3u 0.07u
 pmos #(2) pmos_12(G2,vdd,w9); // 0.5u 0.07u
 pmos #(2) pmos_13(w13,vdd,C); // 0.5u 0.07u
 nmos #(2) nmos_14(w13,vss,C); // 0.3u 0.07u
 nmos #(2) nmos_15(w14,C,D); // 0.3u 0.07u
 pmos #(2) pmos_16(w14,w13,D); // 0.5u 0.07u
 nmos #(2) nmos_17(G1,vss,w14); // 0.3u 0.07u
 pmos #(2) pmos_18(G1,vdd,w14); // 0.5u 0.07u
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;
#800 C=~C;
#1600 D=~D;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
// C CLK 4 4
// D CLK 8 8
