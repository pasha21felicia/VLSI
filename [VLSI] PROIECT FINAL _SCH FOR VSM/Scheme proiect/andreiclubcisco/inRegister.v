// DSCH3
// 5/24/2009 9:34:54 PM
// C:\vlsi-tema curs\inRegister.sch

module inRegister( DataIn0,DataIn1,DataIn2,DataIn3,EnableIN,B3,B2,B0,
 B1);
 input DataIn0,DataIn1,DataIn2,DataIn3,EnableIN;
 output B3,B2,B0,B1;
 wire ;
 bufif1 #(10) bufif1_1(B1,DataIn1,EnableIN);
 bufif1 #(10) bufif1_2(B0,DataIn0,EnableIN);
 bufif1 #(10) bufif1_3(B3,DataIn3,EnableIN);
 bufif1 #(10) bufif1_4(B2,DataIn2,EnableIN);
endmodule

// Simulation parameters in Verilog Format
always
#1000 EnableIN=~EnableIN;

// Simulation parameters
// DataIn0 CLK 10 10
// DataIn1 CLK 20 20
// DataIn2 GND
// DataIn3 GND
// EnableIN CLK 40 40
