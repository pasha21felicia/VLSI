// DSCH 3.5
// 16-Apr-19 12:52:22 PM
// C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-InstructionRegister.sch

module VSMInstructionRegister( Data[0],Data[1],Data[2],Data[3],Instr[0],Instr[1],Instr[2],Instr[3],
 EnableInstrReg,LatchInstrReg,MainClock,ClearInstrReg,B3,B2,B0,B1,
 ToInstr0,ToInstr1,ToInstr2,ToInstr3);
 input Data[0],Data[1],Data[2],Data[3],Instr[0],Instr[1],Instr[2],Instr[3];
 input EnableInstrReg,LatchInstrReg,MainClock,ClearInstrReg;
 output B3,B2,B0,B1,ToInstr0,ToInstr1,ToInstr2,ToInstr3;
 wire w16,w18,w19,w20,w22,w24,w25,w26;
 wire w28,w30,w32,w33,w34,w35;
 and #(4) and2_1(w16,MainClock,LatchInstrReg);
 notif1 #(1) notif1_2(B3,w18,EnableInstrReg);
 notif1 #(1) notif1_3(B2,w19,EnableInstrReg);
 dreg #(2) dreg_4(ToInstr0,w22,Instr[0],w20,w16);
 dreg #(2) dreg_5(ToInstr1,w24,Instr[1],w20,w16);
 notif1 #(1) notif1_6(B1,w25,EnableInstrReg);
 notif1 #(1) notif1_7(B0,w26,EnableInstrReg);
 dreg #(2) dreg_8(ToInstr2,w28,Instr[2],w20,w16);
 dreg #(2) dreg_9(ToInstr3,w30,Instr[3],w20,w16);
 not #(3) inv_10(w20,ClearInstrReg);
 dreg #(3) dreg_11(w32,w18,Data[3],w20,w16);
 dreg #(3) dreg_12(w33,w19,Data[2],w20,w16);
 dreg #(3) dreg_13(w34,w25,Data[1],w20,w16);
 dreg #(3) dreg_14(w35,w26,Data[0],w20,w16);
endmodule

// Simulation parameters in Verilog Format
always
#200 EnableInstrReg=~EnableInstrReg;
#400 LatchInstrReg=~LatchInstrReg;
#2000 MainClock=~MainClock;
#800 ClearInstrReg=~ClearInstrReg;

// Simulation parameters
// Data[0] CLK 1 1
// Data[1] CLK 2 2
// Data[2] CLK 4 4
// Data[3] CLK 8 8
// Instr[0] CLK 16 16
// Instr[1] CLK 32 32
// Instr[2] CLK 64 64
// Instr[3] CLK 128 128
// EnableInstrReg CLK 256 256
// LatchInstrReg CLK 512 512
// MainClock CLK 10 10
// ClearInstrReg CLK 1024 1024
