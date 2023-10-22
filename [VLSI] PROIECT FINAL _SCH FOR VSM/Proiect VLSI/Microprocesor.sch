DSCH 3.5
VERSION 17/05/2022 00:02:25
BB(120,-15,1290,330)
SYM  #VsmRingCounter4
BB(325,30,365,80)
TITLE 335 28  #VsmRingCounter4
MODEL 6000
PROP                                                                                                                                    
REC(330,35,30,40,r)
VIS 5
PIN(325,50,0.000,0.000)invClear
PIN(325,40,0.000,0.000)Phase_Count
PIN(365,70,0.010,0.024)Phase0
PIN(365,60,0.010,0.024)Phase1
PIN(365,50,0.010,0.014)Phase2
PIN(365,40,0.010,0.014)Phase3
LIG(325,50,330,50)
LIG(325,40,330,40)
LIG(360,70,365,70)
LIG(360,60,365,60)
LIG(360,50,365,50)
LIG(360,40,365,40)
LIG(330,35,330,75)
LIG(330,35,360,35)
LIG(360,35,360,75)
LIG(360,75,330,75)
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
BB(415,30,455,150)
TITLE 425 23  #VsmMicroInstruction
MODEL 6000
PROP                                                                                                                                    
REC(420,35,30,110,r)
VIS 5
PIN(415,40,0.000,0.000)Phase3
PIN(415,60,0.000,0.000)Phase1
PIN(415,70,0.000,0.000)Phase0
PIN(415,110,0.000,0.000)InstrIn0
PIN(415,100,0.000,0.000)InstrIn1
PIN(415,90,0.000,0.000)InstrIn2
PIN(415,80,0.000,0.000)InstrIn3
PIN(415,50,0.000,0.000)Phase2
PIN(455,60,0.010,0.028)LoadOut
PIN(455,70,0.010,0.028)LoadInst
PIN(455,130,0.010,0.028)EnableA
PIN(455,110,0.010,0.028)EnableIn
PIN(455,90,0.010,0.028)LoadA
PIN(455,40,0.010,0.028)ReadMem
PIN(455,50,0.010,0.028)ProgCount
PIN(455,120,0.010,0.028)EnableAlu
PIN(455,140,0.010,0.028)AddSub
PIN(455,80,0.010,0.030)LoadB
PIN(455,100,0.010,0.028)EnableInstr
LIG(415,40,420,40)
LIG(415,60,420,60)
LIG(415,70,420,70)
LIG(415,110,420,110)
LIG(415,100,420,100)
LIG(415,90,420,90)
LIG(415,80,420,80)
LIG(415,50,420,50)
LIG(450,60,455,60)
LIG(450,70,455,70)
LIG(450,130,455,130)
LIG(450,110,455,110)
LIG(450,90,455,90)
LIG(450,40,455,40)
LIG(450,50,455,50)
LIG(450,120,455,120)
LIG(450,140,455,140)
LIG(450,80,455,80)
LIG(450,100,455,100)
LIG(420,35,420,145)
LIG(420,35,450,35)
LIG(450,35,450,145)
LIG(450,145,420,145)
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
BB(460,200,500,330)
TITLE 470 198  #VsmInstructionReg
MODEL 6000
PROP                                                                                                                                    
REC(465,205,30,120,r)
VIS 5
PIN(460,320,0.000,0.000)ClearInstrReg
PIN(460,220,0.000,0.000)LatchInstrReg
PIN(460,310,0.000,0.000)Data0
PIN(460,300,0.000,0.000)Data1
PIN(460,290,0.000,0.000)Data2
PIN(460,280,0.000,0.000)Data3
PIN(460,260,0.000,0.000)Instr0
PIN(460,250,0.000,0.000)Instr1
PIN(460,240,0.000,0.000)Instr2
PIN(460,230,0.000,0.000)Instr3
PIN(460,210,0.000,0.000)MainClock
PIN(460,270,0.000,0.000)EnableInstrReg
PIN(500,250,0.010,0.016)IB3
PIN(500,280,0.010,0.016)IB0
PIN(500,270,0.010,0.016)IB1
PIN(500,260,0.010,0.016)IB2
PIN(500,240,0.010,0.010)ToInstr0
PIN(500,230,0.010,0.008)ToInstr1
PIN(500,220,0.010,0.008)ToInstr2
PIN(500,210,0.010,0.004)ToInstr3
LIG(460,320,465,320)
LIG(460,220,465,220)
LIG(460,310,465,310)
LIG(460,300,465,300)
LIG(460,290,465,290)
LIG(460,280,465,280)
LIG(460,260,465,260)
LIG(460,250,465,250)
LIG(460,240,465,240)
LIG(460,230,465,230)
LIG(460,210,465,210)
LIG(460,270,465,270)
LIG(495,250,500,250)
LIG(495,280,500,280)
LIG(495,270,500,270)
LIG(495,260,500,260)
LIG(495,240,500,240)
LIG(495,230,500,230)
LIG(495,220,500,220)
LIG(495,210,500,210)
LIG(465,205,465,325)
LIG(465,205,495,205)
LIG(495,205,495,325)
LIG(495,325,465,325)
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
BB(665,30,705,110)
TITLE 675 28  #VsmAccumulatorB
MODEL 6000
PROP                                                                                                                                    
REC(670,35,30,70,r)
VIS 5
PIN(665,60,0.000,0.000)ClearB
PIN(665,50,0.000,0.000)LatchB
PIN(665,100,0.000,0.000)B0
PIN(665,90,0.000,0.000)B1
PIN(665,80,0.000,0.000)B2
PIN(665,70,0.000,0.000)B3
PIN(665,40,0.000,0.000)MainClock
PIN(705,40,0.010,0.008)AluB3
PIN(705,70,0.010,0.008)AluB0
PIN(705,60,0.010,0.008)AluB1
PIN(705,50,0.010,0.008)AluB2
LIG(665,60,670,60)
LIG(665,50,670,50)
LIG(665,100,670,100)
LIG(665,90,670,90)
LIG(665,80,670,80)
LIG(665,70,670,70)
LIG(665,40,670,40)
LIG(700,40,705,40)
LIG(700,70,705,70)
LIG(700,60,705,60)
LIG(700,50,705,50)
LIG(670,35,670,105)
LIG(670,35,700,35)
LIG(700,35,700,105)
LIG(700,105,670,105)
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
BB(675,190,715,280)
TITLE 685 188  #VsmAccumulatorA
MODEL 6000
PROP                                                                                                                                    
REC(680,195,30,80,r)
VIS 5
PIN(675,230,0.000,0.000)ClearA
PIN(675,210,0.000,0.000)LatchA
PIN(675,270,0.000,0.000)A0
PIN(675,260,0.000,0.000)A1
PIN(675,250,0.000,0.000)A2
PIN(675,240,0.000,0.000)A3
PIN(675,220,0.000,0.000)EnableA
PIN(675,200,0.000,0.000)MainClock
PIN(715,200,0.010,0.016)IB3
PIN(715,230,0.010,0.016)IB0
PIN(715,220,0.010,0.016)IB1
PIN(715,210,0.010,0.016)IB2
PIN(715,270,0.010,0.006)AluA0
PIN(715,260,0.010,0.006)AluA1
PIN(715,250,0.010,0.006)AluA2
PIN(715,240,0.010,0.006)AluA3
LIG(675,230,680,230)
LIG(675,210,680,210)
LIG(675,270,680,270)
LIG(675,260,680,260)
LIG(675,250,680,250)
LIG(675,240,680,240)
LIG(675,220,680,220)
LIG(675,200,680,200)
LIG(710,200,715,200)
LIG(710,230,715,230)
LIG(710,220,715,220)
LIG(710,210,715,210)
LIG(710,270,715,270)
LIG(710,260,715,260)
LIG(710,250,715,250)
LIG(710,240,715,240)
LIG(680,195,680,275)
LIG(680,195,710,195)
LIG(710,195,710,275)
LIG(710,275,680,275)
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
BB(850,20,890,130)
TITLE 860 18  #VsmArithmeticUnit
MODEL 6000
PROP                                                                                                                                    
REC(855,25,30,100,r)
VIS 5
PIN(850,70,0.000,0.000)B0
PIN(850,60,0.000,0.000)B1
PIN(850,50,0.000,0.000)B2
PIN(850,40,0.000,0.000)B3
PIN(850,120,0.000,0.000)A0
PIN(850,110,0.000,0.000)A1
PIN(850,100,0.000,0.000)A2
PIN(850,90,0.000,0.000)A3
PIN(850,80,0.000,0.000)AddSub
PIN(850,30,0.000,0.000)EnableAlu
PIN(890,30,0.010,0.016)IB_Alu3
PIN(890,40,0.010,0.016)IB_Alu2
PIN(890,50,0.010,0.016)IB_Alu1
PIN(890,60,0.010,0.016)IB_Alu0
PIN(890,70,0.005,0.002)Carry
LIG(850,70,855,70)
LIG(850,60,855,60)
LIG(850,50,855,50)
LIG(850,40,855,40)
LIG(850,120,855,120)
LIG(850,110,855,110)
LIG(850,100,855,100)
LIG(850,90,855,90)
LIG(850,80,855,80)
LIG(850,30,855,30)
LIG(885,30,890,30)
LIG(885,40,890,40)
LIG(885,50,890,50)
LIG(885,60,890,60)
LIG(885,70,890,70)
LIG(855,25,855,125)
LIG(855,25,885,25)
LIG(885,25,885,125)
LIG(885,125,855,125)
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
BB(1025,-15,1050,20)
TITLE 1025 17  #digit1
MODEL 89
PROP                                                                                                                                    
REC(1030,-10,15,21,r)
VIS 4
PIN(1030,20,0.000,0.000)digit1[1]
PIN(1035,20,0.000,0.000)digit1[2]
PIN(1040,20,0.000,0.000)digit1[3]
PIN(1045,20,0.000,0.000)digit1[4]
LIG(1025,-15,1025,15)
LIG(1050,-15,1025,-15)
LIG(1050,15,1050,-15)
LIG(1025,15,1050,15)
LIG(1030,15,1030,20)
LIG(1035,15,1035,20)
LIG(1040,15,1040,20)
LIG(1045,15,1045,20)
FSYM
SYM  #VsmInRegister
BB(965,260,1005,320)
TITLE 975 258  #VsmInRegister
MODEL 6000
PROP                                                                                                                                    
REC(970,265,30,50,r)
VIS 5
PIN(965,310,0.000,0.000)DataIn0
PIN(965,300,0.000,0.000)DataIn1
PIN(965,290,0.000,0.000)DataIn2
PIN(965,280,0.000,0.000)DataIn3
PIN(965,270,0.000,0.000)EnableIn
PIN(1005,290,0.010,0.016)IB1
PIN(1005,300,0.010,0.016)IB0
PIN(1005,280,0.010,0.016)IB2
PIN(1005,270,0.010,0.016)IB3
LIG(965,310,970,310)
LIG(965,300,970,300)
LIG(965,290,970,290)
LIG(965,280,970,280)
LIG(965,270,970,270)
LIG(1000,290,1005,290)
LIG(1000,300,1005,300)
LIG(1000,280,1005,280)
LIG(1000,270,1005,270)
LIG(970,265,970,315)
LIG(970,265,1000,265)
LIG(1000,265,1000,315)
LIG(1000,315,970,315)
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
BB(1265,50,1290,85)
TITLE 1265 82  #digit2
MODEL 89
PROP                                                                                                                                    
REC(1270,55,15,21,r)
VIS 4
PIN(1270,85,0.000,0.000)digit2[1]
PIN(1275,85,0.000,0.000)digit2[2]
PIN(1280,85,0.000,0.000)digit2[3]
PIN(1285,85,0.000,0.000)digit2[4]
LIG(1265,50,1265,80)
LIG(1290,50,1265,50)
LIG(1290,80,1290,50)
LIG(1265,80,1290,80)
LIG(1270,80,1270,85)
LIG(1275,80,1275,85)
LIG(1280,80,1280,85)
LIG(1285,80,1285,85)
FSYM
SYM  #vdd
BB(1115,135,1125,145)
TITLE 1118 141  #vdd
MODEL 1
PROP                                                                                                                                    
REC(380,70,0,0, )
VIS 0
PIN(1120,145,0.000,0.000)vdd
LIG(1120,145,1120,140)
LIG(1120,140,1115,140)
LIG(1115,140,1120,135)
LIG(1120,135,1125,140)
LIG(1125,140,1120,140)
FSYM
SYM  #VsmOutRegister
BB(1150,115,1190,195)
TITLE 1160 108  #VsmOutRegister
MODEL 6000
PROP                                                                                                                                    
REC(1155,120,30,70,r)
VIS 5
PIN(1150,185,0.000,0.000)IB0
PIN(1150,175,0.000,0.000)IB1
PIN(1150,165,0.000,0.000)IB2
PIN(1150,155,0.000,0.000)IB3
PIN(1150,145,0.000,0.000)invMainReset
PIN(1150,125,0.000,0.000)MainClock
PIN(1150,135,0.000,0.000)LoadOut
PIN(1190,145,0.010,0.004)Out1
PIN(1190,125,0.010,0.004)Out3
PIN(1190,155,0.010,0.004)Out0
PIN(1190,135,0.010,0.004)Out2
LIG(1150,185,1155,185)
LIG(1150,175,1155,175)
LIG(1150,165,1155,165)
LIG(1150,155,1155,155)
LIG(1150,145,1155,145)
LIG(1150,125,1155,125)
LIG(1150,135,1155,135)
LIG(1185,145,1190,145)
LIG(1185,125,1190,125)
LIG(1185,155,1190,155)
LIG(1185,135,1190,135)
LIG(1155,120,1155,190)
LIG(1155,120,1185,120)
LIG(1185,120,1185,190)
LIG(1185,190,1155,190)
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
BB(250,185,300,305)
TITLE 262 200  #Mem8x8
MODEL 865
PROP                                                                                                                                    
REC(262,210,20,40,r)
VIS 3
PIN(250,205,0.000,0.000)Addr2
PIN(250,215,0.000,0.000)Addr1
PIN(250,225,0.000,0.000)Addr0
PIN(250,240,0.000,0.000)Din7
PIN(250,250,0.000,0.000)Din6
PIN(250,260,0.000,0.000)Din5
PIN(250,270,0.000,0.000)Din4
PIN(250,280,0.000,0.000)Din3
PIN(250,290,0.000,0.000)Din2
PIN(250,300,0.000,0.000)Din1
PIN(250,310,0.000,0.000)Din0
PIN(270,185,0.000,0.000)WriteMem
PIN(280,185,0.000,0.000)ReadMem
PIN(300,240,0.005,0.002)Dout7
PIN(300,250,0.005,0.002)Dout6
PIN(300,260,0.005,0.002)Dout5
PIN(300,270,0.005,0.002)Dout4
PIN(300,280,0.005,0.002)Dout3
PIN(300,290,0.005,0.002)Dout2
PIN(300,300,0.005,0.002)Dout1
PIN(300,310,0.005,0.002)Dout0
LIG(300,300,290,300)
LIG(290,290,290,300)
LIG(300,290,290,290)
LIG(290,280,290,290)
LIG(300,280,290,280)
LIG(290,300,290,310)
LIG(260,315,290,315)
LIG(260,310,260,315)
LIG(300,310,290,310)
LIG(250,310,260,310)
LIG(280,195,290,195)
LIG(280,185,280,195)
LIG(270,195,280,195)
LIG(270,185,270,195)
LIG(290,270,290,280)
LIG(300,270,290,270)
LIG(290,260,290,270)
LIG(290,260,300,260)
LIG(290,250,290,260)
LIG(300,250,290,250)
LIG(290,240,290,250)
LIG(290,240,300,240)
LIG(290,195,290,240)
LIG(260,195,270,195)
LIG(260,300,260,310)
LIG(250,300,260,300)
LIG(260,290,260,300)
LIG(250,290,260,290)
LIG(260,280,260,290)
LIG(250,280,260,280)
LIG(260,270,260,280)
LIG(250,270,260,270)
LIG(260,260,260,270)
LIG(250,260,260,260)
LIG(260,250,260,260)
LIG(250,250,260,250)
LIG(260,240,260,250)
LIG(260,225,260,240)
LIG(260,215,260,225)
LIG(260,205,260,215)
LIG(260,195,260,205)
LIG(250,240,260,240)
LIG(250,225,260,225)
LIG(250,215,260,215)
LIG(290,310,290,315)
LIG(250,205,260,205)
FSYM
SYM  #vss
BB(240,187,250,195)
TITLE 244 192  #vss
MODEL 0
PROP                                                                                                                                    
REC(240,185,0,0,b)
VIS 0
PIN(245,185,0.000,0.000)vss
LIG(245,185,245,190)
LIG(240,190,250,190)
LIG(240,193,242,190)
LIG(242,193,244,190)
LIG(244,193,246,190)
LIG(246,193,248,190)
FSYM
SYM  #VsmCounter16
BB(120,185,160,235)
TITLE 130 183  #VsmCounter16
MODEL 6000
PROP                                                                                                                                    
REC(125,190,30,40,r)
VIS 5
PIN(120,195,0.000,0.000)MainClock
PIN(120,215,0.000,0.000)ClearCounter
PIN(120,205,0.000,0.000)EnableCount
PIN(160,195,0.010,0.002)PC3
PIN(160,205,0.010,0.006)PC2
PIN(160,215,0.010,0.006)PC1
PIN(160,225,0.010,0.006)PC0
LIG(120,195,125,195)
LIG(120,215,125,215)
LIG(120,205,125,205)
LIG(155,195,160,195)
LIG(155,205,160,205)
LIG(155,215,160,215)
LIG(155,225,160,225)
LIG(125,190,125,230)
LIG(125,190,155,190)
LIG(155,190,155,230)
LIG(155,230,125,230)
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
BB(880,275,930,315)
TITLE 880 317  #kbd1
MODEL 85
PROP                                                                                                                                    
REC(880,275,40,40,r)
VIS 4
PIN(930,310,0.000,0.000)kbd1[1]
PIN(930,300,0.000,0.000)kbd1[2]
PIN(930,290,0.000,0.000)kbd1[3]
PIN(930,280,0.000,0.000)kbd1[4]
LIG(920,275,920,315)
LIG(880,275,920,275)
LIG(880,275,880,315)
LIG(914,280,914,283)
LIG(880,295,920,295)
LIG(900,275,900,315)
LIG(890,315,890,275)
LIG(880,285,920,285)
LIG(910,275,910,315)
LIG(880,305,920,305)
LIG(920,310,930,310)
LIG(930,300,920,300)
LIG(920,290,930,290)
LIG(930,280,920,280)
LIG(884,313,884,307)
LIG(884,307,886,307)
LIG(886,307,886,313)
LIG(886,313,884,313)
LIG(896,313,896,307)
LIG(904,307,906,307)
LIG(906,307,906,309)
LIG(906,309,904,309)
LIG(904,309,904,313)
LIG(904,313,906,313)
LIG(914,313,916,313)
LIG(916,307,914,307)
LIG(916,307,916,313)
LIG(914,309,916,309)
LIG(884,297,884,301)
LIG(884,301,886,301)
LIG(886,297,886,303)
LIG(896,297,894,297)
LIG(894,297,894,299)
LIG(894,299,896,299)
LIG(896,299,896,303)
LIG(896,303,894,303)
LIG(904,297,904,303)
LIG(904,303,906,303)
LIG(906,303,906,299)
LIG(906,299,904,299)
LIG(914,297,916,297)
LIG(916,297,916,303)
LIG(884,287,884,293)
LIG(884,287,886,287)
LIG(886,287,886,293)
LIG(886,293,884,293)
LIG(884,289,886,289)
LIG(914,280,916,280)
LIG(880,315,920,315)
LIG(894,287,896,287)
LIG(914,277,914,280)
LIG(903,283,903,280)
LIG(903,277,906,277)
LIG(894,277,894,283)
LIG(883,283,883,277)
LIG(883,277,886,277)
LIG(913,287,916,287)
LIG(916,287,917,288)
LIG(917,288,916,289)
LIG(913,289,916,289)
LIG(913,293,913,289)
LIG(894,289,896,289)
LIG(883,283,886,283)
LIG(894,287,894,289)
LIG(896,289,896,293)
LIG(896,287,896,289)
LIG(896,293,894,293)
LIG(903,283,906,283)
LIG(903,293,905,287)
LIG(905,287,907,293)
LIG(913,289,913,287)
LIG(916,289,917,290)
LIG(914,277,917,277)
LIG(917,290,917,292)
LIG(903,291,907,291)
LIG(897,282,896,283)
LIG(917,292,916,293)
LIG(903,280,903,277)
LIG(903,280,905,280)
LIG(897,278,897,282)
LIG(896,277,897,278)
LIG(893,283,894,283)
LIG(893,277,894,277)
LIG(913,293,916,293)
LIG(894,277,896,277)
LIG(894,283,896,283)
FSYM
CNC(645 250)
CNC(660 280)
CNC(655 270)
CNC(650 260)
CNC(1030 30)
CNC(1030 30)
CNC(1035 40)
CNC(1040 50)
CNC(1045 60)
CNC(1030 155)
CNC(1030 200)
CNC(1035 210)
CNC(1040 220)
CNC(1045 230)
CNC(1045 185)
CNC(1040 175)
CNC(1035 165)
CNC(785 230)
CNC(780 220)
CNC(775 210)
CNC(770 200)
LIG(365,40,415,40)
LIG(365,50,415,50)
LIG(365,60,415,60)
LIG(365,70,415,70)
LIG(415,110,395,110)
LIG(395,110,395,195)
LIG(395,195,560,195)
LIG(560,195,560,240)
LIG(500,240,560,240)
LIG(390,100,415,100)
LIG(390,100,390,190)
LIG(390,190,555,190)
LIG(555,190,555,230)
LIG(500,230,555,230)
LIG(380,90,415,90)
LIG(380,90,380,185)
LIG(380,185,550,185)
LIG(550,185,550,220)
LIG(500,220,550,220)
LIG(370,80,415,80)
LIG(370,80,370,180)
LIG(370,180,545,180)
LIG(635,70,665,70)
LIG(545,180,545,210)
LIG(500,210,545,210)
LIG(455,80,570,80)
LIG(570,50,665,50)
LIG(570,50,570,80)
LIG(650,100,665,100)
LIG(650,100,650,185)
LIG(650,185,785,185)
LIG(785,185,785,310)
LIG(660,270,675,270)
LIG(660,270,660,280)
LIG(660,310,785,310)
LIG(645,90,665,90)
LIG(645,90,645,180)
LIG(645,180,780,180)
LIG(655,260,675,260)
LIG(780,180,780,305)
LIG(655,260,655,270)
LIG(655,305,780,305)
LIG(640,80,665,80)
LIG(640,80,640,175)
LIG(640,175,775,175)
LIG(650,250,675,250)
LIG(650,250,650,260)
LIG(650,300,775,300)
LIG(775,175,775,300)
LIG(830,120,830,270)
LIG(635,70,635,170)
LIG(635,170,770,170)
LIG(770,170,770,295)
LIG(645,240,675,240)
LIG(645,240,645,250)
LIG(645,295,770,295)
LIG(500,280,660,280)
LIG(660,280,660,310)
LIG(500,270,655,270)
LIG(655,270,655,305)
LIG(500,260,650,260)
LIG(650,260,650,300)
LIG(500,250,645,250)
LIG(645,250,645,295)
LIG(705,40,850,40)
LIG(705,50,850,50)
LIG(705,60,850,60)
LIG(705,70,850,70)
LIG(815,90,850,90)
LIG(715,270,830,270)
LIG(820,100,850,100)
LIG(825,110,850,110)
LIG(830,120,850,120)
LIG(815,90,815,240)
LIG(715,240,815,240)
LIG(715,250,820,250)
LIG(820,100,820,250)
LIG(715,260,825,260)
LIG(825,110,825,260)
LIG(1045,20,1045,60)
LIG(1005,300,1045,300)
LIG(1040,20,1040,50)
LIG(1005,290,1040,290)
LIG(1035,20,1035,40)
LIG(1005,280,1035,280)
LIG(1030,20,1030,30)
LIG(1005,270,1030,270)
LIG(890,30,1030,30)
LIG(1030,30,1030,155)
LIG(1285,85,1285,155)
LIG(890,40,1035,40)
LIG(1035,40,1035,165)
LIG(890,50,1040,50)
LIG(1040,50,1040,175)
LIG(890,60,1045,60)
LIG(1045,60,1045,185)
LIG(160,225,250,225)
LIG(160,215,250,215)
LIG(715,200,1030,200)
LIG(1030,200,1030,270)
LIG(715,210,1035,210)
LIG(1035,210,1035,280)
LIG(715,220,1040,220)
LIG(1040,220,1040,290)
LIG(715,230,1045,230)
LIG(1045,230,1045,300)
LIG(1045,185,1150,185)
LIG(1045,185,1045,230)
LIG(1150,175,1040,175)
LIG(1040,175,1040,220)
LIG(1150,165,1035,165)
LIG(1035,165,1035,210)
LIG(1150,155,1030,155)
LIG(1030,155,1030,200)
LIG(1120,145,1150,145)
LIG(1270,85,1270,125)
LIG(1190,125,1270,125)
LIG(1190,135,1275,135)
LIG(1275,85,1275,135)
LIG(1190,145,1280,145)
LIG(1280,85,1280,145)
LIG(1190,155,1285,155)
LIG(300,310,460,310)
LIG(300,300,460,300)
LIG(300,290,460,290)
LIG(300,280,460,280)
LIG(300,270,435,270)
LIG(435,260,435,270)
LIG(435,260,460,260)
LIG(300,260,430,260)
LIG(430,250,430,260)
LIG(430,250,460,250)
LIG(300,250,420,250)
LIG(420,240,420,250)
LIG(420,240,460,240)
LIG(300,240,415,240)
LIG(415,230,415,240)
LIG(415,230,460,230)
LIG(160,205,250,205)
LIG(245,185,270,185)
LIG(930,310,965,310)
LIG(930,300,965,300)
LIG(930,290,965,290)
LIG(930,280,965,280)
FFIG C:\Users\roxana\OneDrive\Desktop\Microprocesor.sch
