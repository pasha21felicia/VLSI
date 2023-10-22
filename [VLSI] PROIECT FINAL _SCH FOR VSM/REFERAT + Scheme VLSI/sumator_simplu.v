// DSCH 3.5
// 20/05/2022 14:19:06
// C:\Users\Betina\Documents\0.ACS-An4\0. Sem II\4. PVLSI\VLSI referat all 2022\Scheme VLSI\sumator_simplu.sch

module sumator_simplu( B,Cin,A,S,Cout);
 input B,Cin,A;
 output S,Cout;
 wire w4,w7,w8,w9,w11,w12,w13,w14;
 wire w15,w16,w17,w18;
 nmos #(2) nmos_1(Cout,vdd,w4); // 0.3u 0.07u
 pmos #(2) pmos_2(w7,vdd,A); // 0.5u 0.07u
 nmos #(2) nmos_3(w7,vss,A); // 0.3u 0.07u
 nmos #(2) nmos_4(w8,A,B); // 0.3u 0.07u
 pmos #(2) pmos_5(w8,w7,B); // 0.5u 0.07u
 nmos #(3) nmos_6(w9,vss,w8); // 0.3u 0.07u
 pmos #(3) pmos_7(w9,vdd,w8); // 0.5u 0.07u
 pmos #(2) pmos_8(S,vdd,w11); // 0.5u 0.07u
 nmos #(2) nmos_9(S,vss,w11); // 0.3u 0.07u
 pmos #(2) pmos_10(w11,w12,Cin); // 0.5u 0.07u
 nmos #(2) nmos_11(w11,w9,Cin); // 0.3u 0.07u
 nmos #(2) nmos_12(w12,vss,w9); // 0.3u 0.07u
 pmos #(2) pmos_13(w12,vdd,w9); // 0.5u 0.07u
 pmos #(2) pmos_14(Cout,w13,w14); // 0.5u 0.07u
 pmos #(3) pmos_15(w15,vdd,A); // 0.5u 0.07u
 pmos #(3) pmos_16(w16,vdd,w9); // 0.5u 0.07u
 pmos #(2) pmos_17(w4,vdd,w16); // 0.5u 0.07u
 nmos #(2) nmos_18(w4,vss,w16); // 0.3u 0.07u
 pmos #(1) pmos_19(w13,vss,w4); // 0.5u 0.07u
 nmos #(1) nmos_20(w17,vss,w9); // 0.3u 0.07u
 nmos #(3) nmos_21(w15,w18,A); // 0.3u 0.07u
 pmos #(3) pmos_22(w16,vdd,Cin); // 0.5u 0.07u
 nmos #(3) nmos_23(w16,w17,Cin); // 0.3u 0.07u
 pmos #(3) pmos_24(w15,vdd,B); // 0.5u 0.07u
 pmos #(2) pmos_25(w14,vdd,w15); // 0.5u 0.07u
 nmos #(2) nmos_26(w14,vss,w15); // 0.3u 0.07u
 nmos #(2) nmos_27(Cout,vdd,w14); // 0.3u 0.07u
 nmos #(1) nmos_28(w18,vss,B); // 0.3u 0.07u
endmodule

// Simulation parameters in Verilog Format
always
#200 B=~B;
#400 Cin=~Cin;
#800 A=~A;

// Simulation parameters
// B CLK 1 1
// Cin CLK 2 2
// A CLK 4 4
