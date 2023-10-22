// DSCH3
// 5/24/2009 9:03:41 PM
// C:\vlsi-tema curs\arithmeticUnic.sch

module arithmeticUnic( A0,A1,A2,A3,B0,B1,B2,B3,
 AdunaresauScadere,ActiveazaALU,Rezultat3,Rezultat2,Rezultat1,Rezultat0,Carry);
 input A0,A1,A2,A3,B0,B1,B2,B3;
 input AdunaresauScadere,ActiveazaALU;
 output Rezultat3,Rezultat2,Rezultat1,Rezultat0,Carry;
 wire w3,w5,w6,w7,w9,w11,w12,w14;
 wire w15,w17,w18,w19,w21,w28,w30,w32;
 wire w33,w34,w35,w36,w37,w38,w39,w40;
 wire w41,w42,w43,w44,w45,w46,w47,w48;
 mux #(24) mux_1(w5,B1,w3,AdunaresauScadere);
 bufif1 #(10) bufif1_2(Rezultat3,w9,ActiveazaALU);
 bufif1 #(10) bufif1_3(Rezultat2,w14,ActiveazaALU);
 bufif1 #(10) bufif1_4(Rezultat1,w17,ActiveazaALU);
 bufif1 #(10) bufif1_5(Rezultat0,w21,ActiveazaALU);
 not #(10) inv_6(w3,B1);
 not #(10) inv_7(w28,B0);
 mux #(24) mux_8(w19,B0,w28,AdunaresauScadere);
 mux #(24) mux_9(w12,B2,w30,AdunaresauScadere);
 not #(10) inv_10(w30,B2);
 not #(10) inv_11(w32,B3);
 mux #(24) mux_12(w7,B3,w32,AdunaresauScadere);
 mux #(17) mux_13(w18,vss,vdd,AdunaresauScadere);
 or #(15) or2_1_14(Carry,w33,w34);
 and #(15) and2_2_15(w33,w7,A3);
 xor #(15) xor2_3_16(w9,w35,w6);
 xor #(15) xor2_4_17(w35,A3,w7);
 or #(15) or2_5_18(w36,A3,w7);
 and #(15) and2_6_19(w34,w6,w36);
 or #(22) or2_1_20(w6,w37,w38);
 and #(15) and2_2_21(w37,w12,A2);
 xor #(15) xor2_3_22(w14,w39,w11);
 xor #(15) xor2_4_23(w39,A2,w12);
 or #(15) or2_5_24(w40,A2,w12);
 and #(15) and2_6_25(w38,w11,w40);
 or #(22) or2_1_26(w11,w41,w42);
 and #(15) and2_2_27(w41,w5,A1);
 xor #(15) xor2_3_28(w17,w43,w15);
 xor #(15) xor2_4_29(w43,A1,w5);
 or #(15) or2_5_30(w44,A1,w5);
 and #(15) and2_6_31(w42,w15,w44);
 or #(22) or2_1_32(w15,w45,w46);
 and #(15) and2_2_33(w45,w19,A0);
 xor #(15) xor2_3_34(w21,w47,w18);
 xor #(15) xor2_4_35(w47,A0,w19);
 or #(15) or2_5_36(w48,A0,w19);
 and #(15) and2_6_37(w46,w18,w48);
endmodule

// Simulation parameters in Verilog Format
always
#1000 Adunare sau Scadere=~Adunare sau Scadere;
#2000 Activeaza ALU=~Activeaza ALU;

// Simulation parameters
// A0 CLK 10 10
// A1 CLK 20 20
// A2 GND
// A3 GND
// B0 CLK 40 40
// B1 CLK 80 80
// B2 GND
// B3 GND
// Adunare sau Scadere CLK 160 160
// Activeaza ALU CLK 320 320
