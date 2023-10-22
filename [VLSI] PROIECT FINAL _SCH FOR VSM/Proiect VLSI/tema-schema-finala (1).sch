DSCH 3.5
VERSION 24/04/2020 15:18:02
BB(-260,-85,910,260)
SYM  #VsmRingCounter4
BB(-55,-40,-15,10)
TITLE -45 -42  #VsmRingCounter4
MODEL 6000
PROP                                                                                                                                   
REC(-50,-35,30,40,r)
VIS 5
PIN(-55,-20,0.000,0.000)invClear
PIN(-55,-30,0.000,0.000)Phase_Count
PIN(-15,0,0.010,0.024)Phase0
PIN(-15,-10,0.010,0.024)Phase1
PIN(-15,-20,0.010,0.014)Phase2
PIN(-15,-30,0.010,0.014)Phase3
LIG(-55,-20,-50,-20)
LIG(-55,-30,-50,-30)
LIG(-20,0,-15,0)
LIG(-20,-10,-15,-10)
LIG(-20,-20,-15,-20)
LIG(-20,-30,-15,-30)
LIG(-50,-35,-50,5)
LIG(-50,-35,-20,-35)
LIG(-20,-35,-20,5)
LIG(-20,5,-50,5)
VLG module VsmRingCounter4( invClear,Phase_Count,Phase0,Phase1,Phase2,Phase3);
VLG input invClear,Phase_Count;
VLG output Phase0,Phase1,Phase2,Phase3;
VLG wire w3,w4,w6,w8,w9,w11,w12,w14;
VLG wire w15,;
VLG xor #(16) xor2_1(Phase2,w3,w4);
VLG xor #(16) xor2_2(Phase1,w6,w3);
VLG dreg #(19) dreg7_3(w6,w11,w8,w9,Phase_Count);
VLG dreg #(19) dreg8_4(w12,w8,w4,w9,Phase_Count);
VLG dreg #(12) dreg9_5(w4,w14,w3,w9,Phase_Count);
VLG dreg #(12) dreg10_6(w3,w15,w6,w9,Phase_Count);
VLG not #(31) inv_7(w9,invClear);
VLG xor #(16) xor2_8(Phase3,w4,w12);
VLG xor #(16) xor2_9(Phase0,w12,w11);
VLG endmodule
FSYM
SYM  #VsmMicroInstruction
BB(35,-40,75,80)
TITLE 45 -47  #VsmMicroInstruction
MODEL 6000
PROP                                                                                                                                   
REC(40,-35,30,110,r)
VIS 5
PIN(35,-30,0.000,0.000)Phase3
PIN(35,-10,0.000,0.000)Phase1
PIN(35,0,0.000,0.000)Phase0
PIN(35,40,0.000,0.000)InstrIn0
PIN(35,30,0.000,0.000)InstrIn1
PIN(35,20,0.000,0.000)InstrIn2
PIN(35,10,0.000,0.000)InstrIn3
PIN(35,-20,0.000,0.000)Phase2
PIN(75,-10,0.010,0.028)LoadOut
PIN(75,0,0.010,0.028)LoadInst
PIN(75,60,0.010,0.028)EnableA
PIN(75,40,0.010,0.028)EnableIn
PIN(75,20,0.010,0.028)LoadA
PIN(75,-30,0.010,0.028)ReadMem
PIN(75,-20,0.010,0.028)ProgCount
PIN(75,50,0.010,0.028)EnableAlu
PIN(75,70,0.010,0.028)AddSub
PIN(75,10,0.010,0.030)LoadB
PIN(75,30,0.010,0.028)EnableInstr
LIG(35,-30,40,-30)
LIG(35,-10,40,-10)
LIG(35,0,40,0)
LIG(35,40,40,40)
LIG(35,30,40,30)
LIG(35,20,40,20)
LIG(35,10,40,10)
LIG(35,-20,40,-20)
LIG(70,-10,75,-10)
LIG(70,0,75,0)
LIG(70,60,75,60)
LIG(70,40,75,40)
LIG(70,20,75,20)
LIG(70,-30,75,-30)
LIG(70,-20,75,-20)
LIG(70,50,75,50)
LIG(70,70,75,70)
LIG(70,10,75,10)
LIG(70,30,75,30)
LIG(40,-35,40,75)
LIG(40,-35,70,-35)
LIG(70,-35,70,75)
LIG(70,75,40,75)
VLG module VsmMicroInstruction( Phase3,Phase1,Phase0,InstrIn0,InstrIn1,InstrIn2,InstrIn3,Phase2,
VLG LoadOut,LoadInst,EnableA,EnableIn,LoadA,ReadMem,ProgCount,EnableAlu,
VLG AddSub,LoadB,EnableInstr);
VLG input Phase3,Phase1,Phase0,InstrIn0,InstrIn1,InstrIn2,InstrIn3,Phase2;
VLG output LoadOut,LoadInst,EnableA,EnableIn,LoadA,ReadMem,ProgCount,EnableAlu;
VLG output AddSub,LoadB,EnableInstr;
VLG wire w2,w4,w6,w7,w13,w16,w17,w20;
VLG wire w23,w25,w27,w28,w29,w32,w34,w35;
VLG wire w36,w37,w39,w40,w41,w42;
VLG and #(86) and2_1(w4,w2,Phase2);
VLG and #(86) and2_2(w6,w2,Phase3);
VLG nmos #(101) nmos_3(AddSub,vdd,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_4(ProgCount,vss,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_5(EnableIn,vss,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_6(LoadOut,vss,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_7(LoadOut,vss,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_8(AddSub,vss,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_9(LoadB,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_10(ReadMem,vss,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_11(LoadB,vss,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_12(LoadOut,vss,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_13(LoadInst,vss,w4); // 1.0u 0.12u
VLG not #(45) inv_14(w20,InstrIn3);
VLG nmos #(101) nmos_15(EnableIn,vss,Phase1); // 1.0u 0.12u
VLG nmos #(101) nmos_16(LoadInst,vss,w6); // 1.0u 0.12u
VLG and #(30) and4_17(w2,InstrIn0,w23,InstrIn2,w20);
VLG nmos #(101) nmos_18(LoadB,vss,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_19(AddSub,vdd,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_20(ReadMem,vss,w6); // 1.0u 0.12u
VLG probe #(1) probe_21(w2); // 1 Load(0101)
VLG nmos #(101) nmos_22(ProgCount,vdd,Phase1); // 1.0u 0.12u
VLG nmos #(101) nmos_23(LoadInst,vss,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_24(LoadInst,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_25(ProgCount,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_26(ReadMem,vss,Phase1); // 1.0u 0.12u
VLG nmos #(101) nmos_27(ProgCount,vss,w6); // 1.0u 0.12u
VLG nmos #(101) nmos_28(EnableIn,vss,w6); // 1.0u 0.12u
VLG nmos #(101) nmos_29(LoadB,vdd,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_30(LoadInst,vss,Phase1); // 1.0u 0.12u
VLG nmos #(101) nmos_31(LoadInst,vdd,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_32(ProgCount,vss,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_33(EnableIn,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_34(ReadMem,vdd,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_35(EnableIn,vss,w25); // 1.0u 0.12u
VLG and #(30) and4_36(w28,InstrIn0,InstrIn1,w27,w20);
VLG and #(86) and2_37(w25,w28,Phase2);
VLG nmos #(101) nmos_38(LoadB,vss,w29); // 1.0u 0.12u
VLG probe #(1) probe_39(w32); // 1 In(0100)
VLG nmos #(101) nmos_40(EnableAlu,vss,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_41(EnableIn,vss,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_42(LoadA,vdd,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_43(LoadA,vss,Phase1); // 1.0u 0.12u
VLG probe #(1) probe_44(w28); // 1 Out(0011)
VLG nmos #(101) nmos_45(EnableA,vss,Phase1); // 1.0u 0.12u
VLG nmos #(101) nmos_46(EnableA,vss,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_47(LoadA,vss,Phase0); // 1.0u 0.12u
VLG and #(86) and2_48(w13,w28,Phase3);
VLG probe #(1) probe_49(w34); // 1 Sub(0010)
VLG probe #(1) probe_50(w35); // 1 Add(0001)
VLG nmos #(101) nmos_51(EnableAlu,vss,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_52(EnableAlu,vss,Phase1); // 1.0u 0.12u
VLG probe #(1) probe_53(w36); // 1 Nop(0000)
VLG nmos #(101) nmos_54(EnableA,vss,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_55(EnableA,vss,w6); // 1.0u 0.12u
VLG nmos #(101) nmos_56(LoadA,vss,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_57(LoadA,vss,w6); // 1.0u 0.12u
VLG nmos #(101) nmos_58(LoadB,vss,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_59(EnableA,vdd,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_60(EnableInstr,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_61(EnableAlu,vss,w6); // 1.0u 0.12u
VLG nmos #(101) nmos_62(EnableAlu,vss,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_63(EnableInstr,vss,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_64(AddSub,vss,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_65(AddSub,vss,Phase1); // 1.0u 0.12u
VLG nmos #(101) nmos_66(LoadOut,vss,Phase1); // 1.0u 0.12u
VLG and #(30) and4_67(w36,w39,w23,w27,w20);
VLG nmos #(101) nmos_68(LoadOut,vss,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_69(LoadOut,vss,w6); // 1.0u 0.12u
VLG not #(24) inv_70(w39,InstrIn0);
VLG not #(31) inv_71(w27,InstrIn2);
VLG not #(31) inv_72(w23,InstrIn1);
VLG and #(86) and2_73(w40,w36,Phase3);
VLG and #(86) and2_74(w41,w36,Phase2);
VLG nmos #(101) nmos_75(ProgCount,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_76(EnableA,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_77(ProgCount,vss,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_78(ReadMem,vdd,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_79(LoadB,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_80(LoadInst,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_81(LoadInst,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_82(LoadB,vdd,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_83(EnableAlu,vdd,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_84(ReadMem,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_85(LoadA,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_86(ProgCount,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_87(EnableIn,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_88(EnableInstr,vss,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_89(LoadA,vdd,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_90(EnableIn,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_91(LoadA,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_92(EnableA,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_93(EnableA,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_94(LoadA,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_95(EnableInstr,vdd,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_96(EnableAlu,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_97(EnableAlu,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_98(EnableInstr,vdd,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_99(AddSub,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_100(LoadOut,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_101(LoadOut,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_102(AddSub,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_103(AddSub,vss,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_104(LoadOut,vss,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_105(LoadOut,vss,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_106(AddSub,vss,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_107(EnableInstr,vss,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_108(EnableAlu,vss,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_109(EnableAlu,vdd,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_110(LoadA,vdd,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_111(EnableA,vss,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_112(EnableA,vss,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_113(LoadA,vss,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_114(EnableIn,vss,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_115(EnableA,vss,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_116(EnableA,vss,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_117(ReadMem,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_118(LoadB,vss,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_119(EnableIn,vss,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_120(ProgCount,vss,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_121(ReadMem,vss,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_122(LoadA,vss,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_123(LoadB,vss,w41); // 1.0u 0.12u
VLG and #(30) and4_124(w35,InstrIn0,w23,w27,w20);
VLG nmos #(101) nmos_125(LoadInst,vss,w29); // 1.0u 0.12u
VLG nmos #(101) nmos_126(LoadInst,vss,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_127(LoadB,vss,Phase1); // 1.0u 0.12u
VLG nmos #(101) nmos_128(ReadMem,vss,w42); // 1.0u 0.12u
VLG nmos #(101) nmos_129(EnableInstr,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_130(EnableAlu,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_131(ProgCount,vss,w42); // 1.0u 0.12u
VLG and #(86) and2_132(w29,w35,Phase3);
VLG and #(86) and2_133(w42,w35,Phase2);
VLG and #(86) and2_134(w17,w34,Phase2);
VLG and #(86) and2_135(w7,w34,Phase3);
VLG nmos #(101) nmos_136(EnableAlu,vss,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_137(ProgCount,vss,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_138(EnableInstr,vss,w40); // 1.0u 0.12u
VLG nmos #(101) nmos_139(ReadMem,vss,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_140(ReadMem,vss,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_141(EnableInstr,vss,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_142(LoadInst,vss,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_143(LoadInst,vss,w7); // 1.0u 0.12u
VLG and #(30) and4_144(w34,w39,InstrIn1,w27,w20);
VLG nmos #(101) nmos_145(LoadB,vss,w6); // 1.0u 0.12u
VLG nmos #(101) nmos_146(EnableIn,vss,w17); // 1.0u 0.12u
VLG nmos #(101) nmos_147(ReadMem,vss,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_148(AddSub,vss,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_149(ProgCount,vss,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_150(EnableIn,vss,w7); // 1.0u 0.12u
VLG nmos #(101) nmos_151(LoadB,vss,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_152(AddSub,vss,w6); // 1.0u 0.12u
VLG nmos #(101) nmos_153(AddSub,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_154(LoadOut,vss,w13); // 1.0u 0.12u
VLG nmos #(101) nmos_155(LoadOut,vdd,w25); // 1.0u 0.12u
VLG nmos #(101) nmos_156(AddSub,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_157(LoadOut,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_158(LoadOut,vss,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_159(AddSub,vss,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_160(EnableInstr,vss,w41); // 1.0u 0.12u
VLG nmos #(101) nmos_161(EnableAlu,vss,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_162(EnableAlu,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_163(EnableInstr,vss,Phase0); // 1.0u 0.12u
VLG nmos #(101) nmos_164(LoadA,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_165(EnableA,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_166(EnableA,vss,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_167(LoadA,vdd,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_168(EnableIn,vdd,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_169(EnableIn,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_170(ProgCount,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_171(ReadMem,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_172(LoadB,vss,w37); // 1.0u 0.12u
VLG and #(30) and4_173(w32,w39,w23,InstrIn2,w20);
VLG nmos #(101) nmos_174(LoadInst,vss,w37); // 1.0u 0.12u
VLG nmos #(101) nmos_175(LoadInst,vss,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_176(ReadMem,vss,w16); // 1.0u 0.12u
VLG nmos #(101) nmos_177(ProgCount,vss,w16); // 1.0u 0.12u
VLG and #(86) and2_178(w37,w32,Phase3);
VLG and #(86) and2_179(w16,w32,Phase2);
VLG nmos #(101) nmos_180(EnableInstr,vdd,w4); // 1.0u 0.12u
VLG nmos #(101) nmos_181(EnableInstr,vss,w6); // 1.0u 0.12u
VLG nmos #(101) nmos_182(EnableInstr,vdd,Phase1); // 1.0u 0.12u
VLG endmodule
FSYM
SYM  #VsmInstructionReg
BB(80,130,120,260)
TITLE 90 128  #VsmInstructionReg
MODEL 6000
PROP                                                                                                                                   
REC(85,135,30,120,r)
VIS 5
PIN(80,250,0.000,0.000)ClearInstrReg
PIN(80,150,0.000,0.000)LatchInstrReg
PIN(80,240,0.000,0.000)Data0
PIN(80,230,0.000,0.000)Data1
PIN(80,220,0.000,0.000)Data2
PIN(80,210,0.000,0.000)Data3
PIN(80,190,0.000,0.000)Instr0
PIN(80,180,0.000,0.000)Instr1
PIN(80,170,0.000,0.000)Instr2
PIN(80,160,0.000,0.000)Instr3
PIN(80,140,0.000,0.000)MainClock
PIN(80,200,0.000,0.000)EnableInstrReg
PIN(120,180,0.010,0.016)IB3
PIN(120,210,0.010,0.016)IB0
PIN(120,200,0.010,0.016)IB1
PIN(120,190,0.010,0.016)IB2
PIN(120,170,0.010,0.010)ToInstr0
PIN(120,160,0.010,0.008)ToInstr1
PIN(120,150,0.010,0.008)ToInstr2
PIN(120,140,0.010,0.004)ToInstr3
LIG(80,250,85,250)
LIG(80,150,85,150)
LIG(80,240,85,240)
LIG(80,230,85,230)
LIG(80,220,85,220)
LIG(80,210,85,210)
LIG(80,190,85,190)
LIG(80,180,85,180)
LIG(80,170,85,170)
LIG(80,160,85,160)
LIG(80,140,85,140)
LIG(80,200,85,200)
LIG(115,180,120,180)
LIG(115,210,120,210)
LIG(115,200,120,200)
LIG(115,190,120,190)
LIG(115,170,120,170)
LIG(115,160,120,160)
LIG(115,150,120,150)
LIG(115,140,120,140)
LIG(85,135,85,255)
LIG(85,135,115,135)
LIG(115,135,115,255)
LIG(115,255,85,255)
VLG module VsmInstructionReg( ClearInstrReg,LatchInstrReg,Data0,Data1,Data2,Data3,Instr0,Instr1,
VLG Instr2,Instr3,MainClock,EnableInstrReg,IB3,IB0,IB1,IB2,
VLG ToInstr0,ToInstr1,ToInstr2,ToInstr3);
VLG input ClearInstrReg,LatchInstrReg,Data0,Data1,Data2,Data3,Instr0,Instr1;
VLG input Instr2,Instr3,MainClock,EnableInstrReg;
VLG output IB3,IB0,IB1,IB2,ToInstr0,ToInstr1,ToInstr2,ToInstr3;
VLG wire w3,w6,w7,w8,w10,w11,w17,w18;
VLG wire w20,w21,w32,w33,w34,w35;
VLG not #(59) inv_1(w3,ClearInstrReg);
VLG dreg #(19) dreg1_2(w7,w8,Data1,w3,w6);
VLG dreg #(19) dreg2_3(w10,w11,Data2,w3,w6);
VLG dreg #(19) dreg3_4(w17,w18,Data3,w3,w6);
VLG dreg #(19) dreg4_5(w20,w21,Data0,w3,w6);
VLG notif1 #(10) notif1_6(IB0,w21,EnableInstrReg);
VLG notif1 #(10) notif1_7(IB1,w8,EnableInstrReg);
VLG notif1 #(10) notif1_8(IB3,w18,EnableInstrReg);
VLG notif1 #(10) notif1_9(IB2,w11,EnableInstrReg);
VLG and #(65) and2_10(w6,MainClock,LatchInstrReg);
VLG dreg #(12) dreg5_11(ToInstr0,w32,Instr0,w3,w6);
VLG dreg #(12) dreg6_12(ToInstr3,w33,Instr3,w3,w6);
VLG dreg #(12) dreg7_13(ToInstr2,w34,Instr2,w3,w6);
VLG dreg #(12) dreg8_14(ToInstr1,w35,Instr1,w3,w6);
VLG endmodule
FSYM
SYM  #VsmAccumulatorB
BB(285,-40,325,40)
TITLE 295 -42  #VsmAccumulatorB
MODEL 6000
PROP                                                                                                                                   
REC(290,-35,30,70,r)
VIS 5
PIN(285,-10,0.000,0.000)ClearB
PIN(285,-20,0.000,0.000)LatchB
PIN(285,30,0.000,0.000)B0
PIN(285,20,0.000,0.000)B1
PIN(285,10,0.000,0.000)B2
PIN(285,0,0.000,0.000)B3
PIN(285,-30,0.000,0.000)MainClock
PIN(325,-30,0.010,0.008)AluB3
PIN(325,0,0.010,0.008)AluB0
PIN(325,-10,0.010,0.008)AluB1
PIN(325,-20,0.010,0.008)AluB2
LIG(285,-10,290,-10)
LIG(285,-20,290,-20)
LIG(285,30,290,30)
LIG(285,20,290,20)
LIG(285,10,290,10)
LIG(285,0,290,0)
LIG(285,-30,290,-30)
LIG(320,-30,325,-30)
LIG(320,0,325,0)
LIG(320,-10,325,-10)
LIG(320,-20,325,-20)
LIG(290,-35,290,35)
LIG(290,-35,320,-35)
LIG(320,-35,320,35)
LIG(320,35,290,35)
VLG module VsmAccumulatorB( ClearB,LatchB,B0,B1,B2,B3,MainClock,AluB3,
VLG AluB0,AluB1,AluB2);
VLG input ClearB,LatchB,B0,B1,B2,B3,MainClock;
VLG output AluB3,AluB0,AluB1,AluB2;
VLG not #(31) inv(w2,ClearB);
VLG dreg #(12) dreg5(AluB0,w7,B0,w2,w5);
VLG dreg #(12) dreg6(AluB3,w9,B3,w2,w5);
VLG dreg #(12) dreg7(AluB2,w14,B2,w2,w5);
VLG dreg #(12) dreg8(AluB1,w16,B1,w2,w5);
VLG and #(37) and2(w5,MainClock,LatchB);
VLG endmodule
FSYM
SYM  #VsmAccumulatorA
BB(295,120,335,210)
TITLE 305 118  #VsmAccumulatorA
MODEL 6000
PROP                                                                                                                                   
REC(300,125,30,80,r)
VIS 5
PIN(295,160,0.000,0.000)ClearA
PIN(295,140,0.000,0.000)LatchA
PIN(295,200,0.000,0.000)A0
PIN(295,190,0.000,0.000)A1
PIN(295,180,0.000,0.000)A2
PIN(295,170,0.000,0.000)A3
PIN(295,150,0.000,0.000)EnableA
PIN(295,130,0.000,0.000)MainClock
PIN(335,130,0.010,0.016)IB3
PIN(335,160,0.010,0.016)IB0
PIN(335,150,0.010,0.016)IB1
PIN(335,140,0.010,0.016)IB2
PIN(335,200,0.010,0.006)AluA0
PIN(335,190,0.010,0.006)AluA1
PIN(335,180,0.010,0.006)AluA2
PIN(335,170,0.010,0.006)AluA3
LIG(295,160,300,160)
LIG(295,140,300,140)
LIG(295,200,300,200)
LIG(295,190,300,190)
LIG(295,180,300,180)
LIG(295,170,300,170)
LIG(295,150,300,150)
LIG(295,130,300,130)
LIG(330,130,335,130)
LIG(330,160,335,160)
LIG(330,150,335,150)
LIG(330,140,335,140)
LIG(330,200,335,200)
LIG(330,190,335,190)
LIG(330,180,335,180)
LIG(330,170,335,170)
LIG(300,125,300,205)
LIG(300,125,330,125)
LIG(330,125,330,205)
LIG(330,205,300,205)
VLG module VsmAccumulatorA( ClearA,LatchA,A0,A1,A2,A3,EnableA,MainClock,
VLG IB3,IB0,IB1,IB2,AluA0,AluA1,AluA2,AluA3);
VLG input ClearA,LatchA,A0,A1,A2,A3,EnableA,MainClock;
VLG output IB3,IB0,IB1,IB2,AluA0,AluA1,AluA2,AluA3;
VLG wire w3,w6,w8,w11,w18,w21,;
VLG not #(31) inv_1(w3,ClearA);
VLG dreg #(19) dreg17_2(AluA0,w8,A0,w3,w6);
VLG dreg #(19) dreg18_3(AluA3,w11,A3,w3,w6);
VLG dreg #(19) dreg19_4(AluA2,w18,A2,w3,w6);
VLG dreg #(19) dreg20_5(AluA1,w21,A1,w3,w6);
VLG notif1 #(10) notif1_6(IB0,w8,EnableA);
VLG notif1 #(10) notif1_7(IB1,w21,EnableA);
VLG notif1 #(10) notif1_8(IB3,w11,EnableA);
VLG notif1 #(10) notif1_9(IB2,w18,EnableA);
VLG and #(37) and2_10(w6,MainClock,LatchA);
VLG endmodule
FSYM
SYM  #VsmArithmeticUnit
BB(470,-50,510,60)
TITLE 480 -52  #VsmArithmeticUnit
MODEL 6000
PROP                                                                                                                                   
REC(475,-45,30,100,r)
VIS 5
PIN(470,0,0.000,0.000)B0
PIN(470,-10,0.000,0.000)B1
PIN(470,-20,0.000,0.000)B2
PIN(470,-30,0.000,0.000)B3
PIN(470,50,0.000,0.000)A0
PIN(470,40,0.000,0.000)A1
PIN(470,30,0.000,0.000)A2
PIN(470,20,0.000,0.000)A3
PIN(470,10,0.000,0.000)AddSub
PIN(470,-40,0.000,0.000)EnableAlu
PIN(510,-40,0.010,0.016)IB_Alu3
PIN(510,-30,0.010,0.016)IB_Alu2
PIN(510,-20,0.010,0.016)IB_Alu1
PIN(510,-10,0.010,0.016)IB_Alu0
PIN(510,0,0.005,0.002)Carry
LIG(470,0,475,0)
LIG(470,-10,475,-10)
LIG(470,-20,475,-20)
LIG(470,-30,475,-30)
LIG(470,50,475,50)
LIG(470,40,475,40)
LIG(470,30,475,30)
LIG(470,20,475,20)
LIG(470,10,475,10)
LIG(470,-40,475,-40)
LIG(505,-40,510,-40)
LIG(505,-30,510,-30)
LIG(505,-20,510,-20)
LIG(505,-10,510,-10)
LIG(505,0,510,0)
LIG(475,-45,475,55)
LIG(475,-45,505,-45)
LIG(505,-45,505,55)
LIG(505,55,475,55)
VLG module VsmArithmeticUnit( B0,B1,B2,B3,A0,A1,A2,A3,
VLG AddSub,EnableAlu,IB_Alu3,IB_Alu2,IB_Alu1,IB_Alu0,Carry);
VLG input B0,B1,B2,B3,A0,A1,A2,A3;
VLG input AddSub,EnableAlu;
VLG output IB_Alu3,IB_Alu2,IB_Alu1,IB_Alu0,Carry;
VLG wire w10,w11,w12,w13,w18,w20,w21,w23;
VLG wire w24,w25,w26,w27,w28,w29,w30,w31;
VLG wire w33,w34,w35,w36;
VLG mux #(24) mux_1(w20,A2,w18,AddSub);
VLG not #(10) inv_2(w18,A2);
VLG mux #(24) mux_3(w11,A0,w21,AddSub);
VLG mux #(24) mux_4(w24,A3,w23,AddSub);
VLG not #(10) inv_5(w23,A3);
VLG not #(10) inv_6(w25,A1);
VLG mux #(24) mux_7(w26,A1,w25,AddSub);
VLG not #(10) inv_8(w21,A0);
VLG mux #(17) mux_9(w10,vss,vdd,AddSub);
VLG bufif1 #(10) bufif1_10(IB_Alu3,w28,EnableAlu);
VLG bufif1 #(10) bufif1_11(IB_Alu2,w31,EnableAlu);
VLG bufif1 #(10) bufif1_12(IB_Alu1,w30,EnableAlu);
VLG bufif1 #(10) bufif1_13(IB_Alu0,w13,EnableAlu);
VLG xor #(15) xor2_1_14(w33,B0,w11);
VLG assign w12=(B0&w11)|(w10&(B0|w11))
VLG xor #(15) xor2_2_15(w13,w33,w10);
VLG xor #(15) xor2_1_16(w34,B3,w24);
VLG assign Carry=(B3&w24)|(w27&(B3|w24))
VLG xor #(15) xor2_2_17(w28,w34,w27);
VLG xor #(15) xor2_1_18(w35,B1,w26);
VLG assign w29=(B1&w26)|(w12&(B1|w26))
VLG xor #(15) xor2_2_19(w30,w35,w12);
VLG xor #(15) xor2_1_20(w36,B2,w20);
VLG assign w27=(B2&w20)|(w29&(B2|w20))
VLG xor #(15) xor2_2_21(w31,w36,w29);
VLG endmodule
FSYM
SYM  #digit
BB(645,-85,670,-50)
TITLE 645 -53  #digit1
MODEL 89
PROP                                                                                                                                   
REC(650,-80,15,21,r)
VIS 4
PIN(650,-50,0.000,0.000)digit1[1]
PIN(655,-50,0.000,0.000)digit1[2]
PIN(660,-50,0.000,0.000)digit1[3]
PIN(665,-50,0.000,0.000)digit1[4]
LIG(645,-85,645,-55)
LIG(670,-85,645,-85)
LIG(670,-55,670,-85)
LIG(645,-55,670,-55)
LIG(650,-55,650,-50)
LIG(655,-55,655,-50)
LIG(660,-55,660,-50)
LIG(665,-55,665,-50)
FSYM
SYM  #VsmInRegister
BB(585,190,625,250)
TITLE 595 188  #VsmInRegister
MODEL 6000
PROP                                                                                                                                   
REC(590,195,30,50,r)
VIS 5
PIN(585,240,0.000,0.000)DataIn0
PIN(585,230,0.000,0.000)DataIn1
PIN(585,220,0.000,0.000)DataIn2
PIN(585,210,0.000,0.000)DataIn3
PIN(585,200,0.000,0.000)EnableIn
PIN(625,220,0.010,0.016)IB1
PIN(625,230,0.010,0.016)IB0
PIN(625,210,0.010,0.016)IB2
PIN(625,200,0.010,0.016)IB3
LIG(585,240,590,240)
LIG(585,230,590,230)
LIG(585,220,590,220)
LIG(585,210,590,210)
LIG(585,200,590,200)
LIG(620,220,625,220)
LIG(620,230,625,230)
LIG(620,210,625,210)
LIG(620,200,625,200)
LIG(590,195,590,245)
LIG(590,195,620,195)
LIG(620,195,620,245)
LIG(620,245,590,245)
VLG module VsmInRegister( DataIn0,DataIn1,DataIn2,DataIn3,EnableIn,IB1,IB0,IB2,
VLG IB3);
VLG input DataIn0,DataIn1,DataIn2,DataIn3,EnableIn;
VLG output IB1,IB0,IB2,IB3;
VLG wire ;
VLG bufif1 #(10) bufif1_1(IB3,DataIn3,EnableIn);
VLG bufif1 #(10) bufif1_2(IB0,DataIn0,EnableIn);
VLG bufif1 #(10) bufif1_3(IB1,DataIn1,EnableIn);
VLG bufif1 #(10) bufif1_4(IB2,DataIn2,EnableIn);
VLG endmodule
FSYM
SYM  #digit
BB(885,-20,910,15)
TITLE 885 12  #digit2
MODEL 89
PROP                                                                                                                                   
REC(890,-15,15,21,r)
VIS 4
PIN(890,15,0.000,0.000)digit2[1]
PIN(895,15,0.000,0.000)digit2[2]
PIN(900,15,0.000,0.000)digit2[3]
PIN(905,15,0.000,0.000)digit2[4]
LIG(885,-20,885,10)
LIG(910,-20,885,-20)
LIG(910,10,910,-20)
LIG(885,10,910,10)
LIG(890,10,890,15)
LIG(895,10,895,15)
LIG(900,10,900,15)
LIG(905,10,905,15)
FSYM
SYM  #vdd
BB(735,65,745,75)
TITLE 738 71  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(740,75,0.000,0.000)vdd
LIG(740,75,740,70)
LIG(740,70,735,70)
LIG(735,70,740,65)
LIG(740,65,745,70)
LIG(745,70,740,70)
FSYM
SYM  #VsmOutRegister
BB(770,45,810,125)
TITLE 780 38  #VsmOutRegister
MODEL 6000
PROP                                                                                                                                   
REC(775,50,30,70,r)
VIS 5
PIN(770,115,0.000,0.000)IB0
PIN(770,105,0.000,0.000)IB1
PIN(770,95,0.000,0.000)IB2
PIN(770,85,0.000,0.000)IB3
PIN(770,75,0.000,0.000)invMainReset
PIN(770,55,0.000,0.000)MainClock
PIN(770,65,0.000,0.000)LoadOut
PIN(810,75,0.010,0.004)Out1
PIN(810,55,0.010,0.004)Out3
PIN(810,85,0.010,0.004)Out0
PIN(810,65,0.010,0.004)Out2
LIG(770,115,775,115)
LIG(770,105,775,105)
LIG(770,95,775,95)
LIG(770,85,775,85)
LIG(770,75,775,75)
LIG(770,55,775,55)
LIG(770,65,775,65)
LIG(805,75,810,75)
LIG(805,55,810,55)
LIG(805,85,810,85)
LIG(805,65,810,65)
LIG(775,50,775,120)
LIG(775,50,805,50)
LIG(805,50,805,120)
LIG(805,120,775,120)
VLG module VsmOutRegister( IB0,IB1,IB2,IB3,invMainReset,MainClock,LoadOut,Out1,
VLG Out3,Out0,Out2);
VLG input IB0,IB1,IB2,IB3,invMainReset,MainClock,LoadOut;
VLG output Out1,Out3,Out0,Out2;
VLG wire w4,w14,w15,w16,w17,w18;
VLG nand #(34) nand2_1(w4,MainClock,LoadOut);
VLG dreg #(12) dreg_2(Out2,w15,IB2,w14,w4);
VLG dreg #(12) dreg_3(Out1,w16,IB1,w14,w4);
VLG dreg #(12) dreg_4(Out0,w17,IB0,w14,w4);
VLG dreg #(12) dreg_5(Out3,w18,IB3,w14,w4);
VLG not #(31) inv_6(w14,invMainReset);
VLG endmodule
FSYM
SYM  #mem8x8
BB(-130,115,-80,235)
TITLE -118 130  #Mem8x8
MODEL 865
PROP                                                                                                                                   
REC(-118,140,20,40,r)
VIS 3
PIN(-130,135,0.000,0.000)Addr2
PIN(-130,145,0.000,0.000)Addr1
PIN(-130,155,0.000,0.000)Addr0
PIN(-130,170,0.000,0.000)Din7
PIN(-130,180,0.000,0.000)Din6
PIN(-130,190,0.000,0.000)Din5
PIN(-130,200,0.000,0.000)Din4
PIN(-130,210,0.000,0.000)Din3
PIN(-130,220,0.000,0.000)Din2
PIN(-130,230,0.000,0.000)Din1
PIN(-130,240,0.000,0.000)Din0
PIN(-110,115,0.000,0.000)WriteMem
PIN(-100,115,0.000,0.000)ReadMem
PIN(-80,170,0.005,0.002)Dout7
PIN(-80,180,0.005,0.002)Dout6
PIN(-80,190,0.005,0.002)Dout5
PIN(-80,200,0.005,0.002)Dout4
PIN(-80,210,0.005,0.002)Dout3
PIN(-80,220,0.005,0.002)Dout2
PIN(-80,230,0.005,0.002)Dout1
PIN(-80,240,0.005,0.002)Dout0
LIG(-80,230,-90,230)
LIG(-90,220,-90,230)
LIG(-80,220,-90,220)
LIG(-90,210,-90,220)
LIG(-80,210,-90,210)
LIG(-90,230,-90,240)
LIG(-120,245,-90,245)
LIG(-120,240,-120,245)
LIG(-80,240,-90,240)
LIG(-130,240,-120,240)
LIG(-100,125,-90,125)
LIG(-100,115,-100,125)
LIG(-110,125,-100,125)
LIG(-110,115,-110,125)
LIG(-90,200,-90,210)
LIG(-80,200,-90,200)
LIG(-90,190,-90,200)
LIG(-90,190,-80,190)
LIG(-90,180,-90,190)
LIG(-80,180,-90,180)
LIG(-90,170,-90,180)
LIG(-90,170,-80,170)
LIG(-90,125,-90,170)
LIG(-120,125,-110,125)
LIG(-120,230,-120,240)
LIG(-130,230,-120,230)
LIG(-120,220,-120,230)
LIG(-130,220,-120,220)
LIG(-120,210,-120,220)
LIG(-130,210,-120,210)
LIG(-120,200,-120,210)
LIG(-130,200,-120,200)
LIG(-120,190,-120,200)
LIG(-130,190,-120,190)
LIG(-120,180,-120,190)
LIG(-130,180,-120,180)
LIG(-120,170,-120,180)
LIG(-120,155,-120,170)
LIG(-120,145,-120,155)
LIG(-120,135,-120,145)
LIG(-120,125,-120,135)
LIG(-130,170,-120,170)
LIG(-130,155,-120,155)
LIG(-130,145,-120,145)
LIG(-90,240,-90,245)
LIG(-130,135,-120,135)
FSYM
SYM  #vss
BB(-140,117,-130,125)
TITLE -136 122  #vss
MODEL 0
PROP                                                                                                                                    
REC(-140,115,0,0,b)
VIS 0
PIN(-135,115,0.000,0.000)vss
LIG(-135,115,-135,120)
LIG(-140,120,-130,120)
LIG(-140,123,-138,120)
LIG(-138,123,-136,120)
LIG(-136,123,-134,120)
LIG(-134,123,-132,120)
FSYM
SYM  #VsmCounter16
BB(-260,115,-220,165)
TITLE -250 113  #VsmCounter16
MODEL 6000
PROP                                                                                                                                   
REC(-255,120,30,40,r)
VIS 5
PIN(-260,125,0.000,0.000)MainClock
PIN(-260,145,0.000,0.000)ClearCounter
PIN(-260,135,0.000,0.000)EnableCount
PIN(-220,125,0.010,0.002)PC3
PIN(-220,135,0.010,0.006)PC2
PIN(-220,145,0.010,0.006)PC1
PIN(-220,155,0.010,0.006)PC0
LIG(-260,125,-255,125)
LIG(-260,145,-255,145)
LIG(-260,135,-255,135)
LIG(-225,125,-220,125)
LIG(-225,135,-220,135)
LIG(-225,145,-220,145)
LIG(-225,155,-220,155)
LIG(-255,120,-255,160)
LIG(-255,120,-225,120)
LIG(-225,120,-225,160)
LIG(-225,160,-255,160)
VLG module VsmCounter16( MainClock,ClearCounter,EnableCount,PC3,PC2,PC1,PC0);
VLG input MainClock,ClearCounter,EnableCount;
VLG output PC3,PC2,PC1,PC0;
VLG wire w5,w6,w7,w9,w11,w13,;
VLG dreg #(19) dreg_1(PC0,w5,w5,w6,w7);
VLG dreg #(19) dreg_2(PC1,w9,w9,w6,PC0);
VLG dreg #(19) dreg_3(PC2,w11,w11,w6,PC1);
VLG dreg #(19) dreg_4(PC3,w13,w13,w6,PC2);
VLG and #(16) and2_5(w7,EnableCount,MainClock);
VLG not #(31) inv_6(w6,ClearCounter);
VLG endmodule
FSYM
SYM  #kbd
BB(500,205,550,245)
TITLE 500 247  #kbd1
MODEL 85
PROP                                                                                                                                   
REC(500,205,40,40,r)
VIS 4
PIN(550,240,0.000,0.000)kbd1[1]
PIN(550,230,0.000,0.000)kbd1[2]
PIN(550,220,0.000,0.000)kbd1[3]
PIN(550,210,0.000,0.000)kbd1[4]
LIG(540,205,540,245)
LIG(500,205,540,205)
LIG(500,205,500,245)
LIG(534,210,534,213)
LIG(500,225,540,225)
LIG(520,205,520,245)
LIG(510,245,510,205)
LIG(500,215,540,215)
LIG(530,205,530,245)
LIG(500,235,540,235)
LIG(540,240,550,240)
LIG(550,230,540,230)
LIG(540,220,550,220)
LIG(550,210,540,210)
LIG(504,243,504,237)
LIG(504,237,506,237)
LIG(506,237,506,243)
LIG(506,243,504,243)
LIG(516,243,516,237)
LIG(524,237,526,237)
LIG(526,237,526,239)
LIG(526,239,524,239)
LIG(524,239,524,243)
LIG(524,243,526,243)
LIG(534,243,536,243)
LIG(536,237,534,237)
LIG(536,237,536,243)
LIG(534,239,536,239)
LIG(504,227,504,231)
LIG(504,231,506,231)
LIG(506,227,506,233)
LIG(516,227,514,227)
LIG(514,227,514,229)
LIG(514,229,516,229)
LIG(516,229,516,233)
LIG(516,233,514,233)
LIG(524,227,524,233)
LIG(524,233,526,233)
LIG(526,233,526,229)
LIG(526,229,524,229)
LIG(534,227,536,227)
LIG(536,227,536,233)
LIG(504,217,504,223)
LIG(504,217,506,217)
LIG(506,217,506,223)
LIG(506,223,504,223)
LIG(504,219,506,219)
LIG(534,210,536,210)
LIG(500,245,540,245)
LIG(514,217,516,217)
LIG(534,207,534,210)
LIG(523,213,523,210)
LIG(523,207,526,207)
LIG(514,207,514,213)
LIG(503,213,503,207)
LIG(503,207,506,207)
LIG(533,217,536,217)
LIG(536,217,537,218)
LIG(537,218,536,219)
LIG(533,219,536,219)
LIG(533,223,533,219)
LIG(514,219,516,219)
LIG(503,213,506,213)
LIG(514,217,514,219)
LIG(516,219,516,223)
LIG(516,217,516,219)
LIG(516,223,514,223)
LIG(523,213,526,213)
LIG(523,223,525,217)
LIG(525,217,527,223)
LIG(533,219,533,217)
LIG(536,219,537,220)
LIG(534,207,537,207)
LIG(537,220,537,222)
LIG(523,221,527,221)
LIG(517,212,516,213)
LIG(537,222,536,223)
LIG(523,210,523,207)
LIG(523,210,525,210)
LIG(517,208,517,212)
LIG(516,207,517,208)
LIG(513,213,514,213)
LIG(513,207,514,207)
LIG(533,223,536,223)
LIG(514,207,516,207)
LIG(514,213,516,213)
FSYM
CNC(265 180)
CNC(280 210)
CNC(275 200)
CNC(270 190)
CNC(650 -40)
CNC(650 -40)
CNC(655 -30)
CNC(660 -20)
CNC(665 -10)
CNC(650 85)
CNC(650 130)
CNC(655 140)
CNC(660 150)
CNC(665 160)
CNC(665 115)
CNC(660 105)
CNC(655 95)
CNC(405 160)
CNC(400 150)
CNC(395 140)
CNC(390 130)
LIG(-15,-30,35,-30)
LIG(-15,-20,35,-20)
LIG(-15,-10,35,-10)
LIG(-15,0,35,0)
LIG(35,40,15,40)
LIG(15,40,15,125)
LIG(15,125,180,125)
LIG(180,125,180,170)
LIG(120,170,180,170)
LIG(10,30,35,30)
LIG(10,30,10,120)
LIG(10,120,175,120)
LIG(175,120,175,160)
LIG(120,160,175,160)
LIG(0,20,35,20)
LIG(0,20,0,115)
LIG(0,115,170,115)
LIG(170,115,170,150)
LIG(120,150,170,150)
LIG(-10,10,35,10)
LIG(-10,10,-10,110)
LIG(-10,110,165,110)
LIG(255,0,285,0)
LIG(165,110,165,140)
LIG(120,140,165,140)
LIG(75,10,190,10)
LIG(190,-20,285,-20)
LIG(190,-20,190,10)
LIG(270,30,285,30)
LIG(270,30,270,115)
LIG(270,115,405,115)
LIG(405,115,405,240)
LIG(280,200,295,200)
LIG(280,200,280,210)
LIG(280,240,405,240)
LIG(265,20,285,20)
LIG(265,20,265,110)
LIG(265,110,400,110)
LIG(275,190,295,190)
LIG(400,110,400,235)
LIG(275,190,275,200)
LIG(275,235,400,235)
LIG(260,10,285,10)
LIG(260,10,260,105)
LIG(260,105,395,105)
LIG(270,180,295,180)
LIG(270,180,270,190)
LIG(270,230,395,230)
LIG(395,105,395,230)
LIG(450,50,450,200)
LIG(255,0,255,100)
LIG(255,100,390,100)
LIG(390,100,390,225)
LIG(265,170,295,170)
LIG(265,170,265,180)
LIG(265,225,390,225)
LIG(120,210,280,210)
LIG(280,210,280,240)
LIG(120,200,275,200)
LIG(275,200,275,235)
LIG(120,190,270,190)
LIG(270,190,270,230)
LIG(120,180,265,180)
LIG(265,180,265,225)
LIG(325,-30,470,-30)
LIG(325,-20,470,-20)
LIG(325,-10,470,-10)
LIG(325,0,470,0)
LIG(435,20,470,20)
LIG(335,200,450,200)
LIG(440,30,470,30)
LIG(445,40,470,40)
LIG(450,50,470,50)
LIG(435,20,435,170)
LIG(335,170,435,170)
LIG(335,180,440,180)
LIG(440,30,440,180)
LIG(335,190,445,190)
LIG(445,40,445,190)
LIG(665,-50,665,-10)
LIG(625,230,665,230)
LIG(660,-50,660,-20)
LIG(625,220,660,220)
LIG(655,-50,655,-30)
LIG(625,210,655,210)
LIG(650,-50,650,-40)
LIG(625,200,650,200)
LIG(510,-40,650,-40)
LIG(650,-40,650,85)
LIG(905,15,905,85)
LIG(510,-30,655,-30)
LIG(655,-30,655,95)
LIG(510,-20,660,-20)
LIG(660,-20,660,105)
LIG(510,-10,665,-10)
LIG(665,-10,665,115)
LIG(-220,155,-130,155)
LIG(-220,145,-130,145)
LIG(335,130,650,130)
LIG(650,130,650,200)
LIG(335,140,655,140)
LIG(655,140,655,210)
LIG(335,150,660,150)
LIG(660,150,660,220)
LIG(335,160,665,160)
LIG(665,160,665,230)
LIG(665,115,770,115)
LIG(665,115,665,160)
LIG(770,105,660,105)
LIG(660,105,660,150)
LIG(770,95,655,95)
LIG(655,95,655,140)
LIG(770,85,650,85)
LIG(650,85,650,130)
LIG(740,75,770,75)
LIG(890,15,890,55)
LIG(810,55,890,55)
LIG(810,65,895,65)
LIG(895,15,895,65)
LIG(810,75,900,75)
LIG(900,15,900,75)
LIG(810,85,905,85)
LIG(-80,240,80,240)
LIG(-80,230,80,230)
LIG(-80,220,80,220)
LIG(-80,210,80,210)
LIG(-80,200,55,200)
LIG(55,190,55,200)
LIG(55,190,80,190)
LIG(-80,190,50,190)
LIG(50,180,50,190)
LIG(50,180,80,180)
LIG(-80,180,40,180)
LIG(40,170,40,180)
LIG(40,170,80,170)
LIG(-80,170,35,170)
LIG(35,160,35,170)
LIG(35,160,80,160)
LIG(-220,135,-130,135)
LIG(-135,115,-110,115)
LIG(550,240,585,240)
LIG(550,230,585,230)
LIG(550,220,585,220)
LIG(550,210,585,210)
FFIG C:\Users\lori\Documents\Facultate\VLSI\soft_vlsi\dsch35\examples\vsm\tema-schema-finala.sch
