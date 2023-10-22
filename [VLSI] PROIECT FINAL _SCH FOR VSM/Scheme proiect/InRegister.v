// DSCH 3.5
// 16-Apr-19 7:34:32 PM
// C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-InRegister.sch

module VSMInRegister( DataIn[0],DataIn[1],DataIn[2],DataIn[3],EnableIn,B1,B3,B2,
 B0);
 input DataIn[0],DataIn[1],DataIn[2],DataIn[3],EnableIn;
 output B1,B3,B2,B0;
 wire ;
 bufif1 #(1) bufif1_1(B0,DataIn[0],EnableIn);
 bufif1 #(1) bufif1_2(B1,DataIn[1],EnableIn);
 bufif1 #(1) bufif1_3(B2,DataIn[2],EnableIn);
 bufif1 #(1) bufif1_4(B3,DataIn[3],EnableIn);
endmodule

// Simulation parameters in Verilog Format
always
#200 EnableIn=~EnableIn;

// Simulation parameters
// DataIn[0] CLK 1 1
// DataIn[1] CLK 2 2
// DataIn[2] CLK 4 4
// DataIn[3] CLK 8 8
// EnableIn CLK 16 16
