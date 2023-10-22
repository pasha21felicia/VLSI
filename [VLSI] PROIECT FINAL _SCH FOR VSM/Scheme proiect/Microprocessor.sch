DSCH 3.5
VERSION 10-May-19 12:22:52 PM
BB(0,-70,795,295)
SYM  #VsmMicroInstruction
BB(105,-35,145,85)
TITLE 115 -42  #VsmMicroInstruction
MODEL 6000
PROP                                                                                                                                    
REC(110,-30,30,110,r)
VIS 5
PIN(105,-25,0.000,0.000)Phase3
PIN(105,-5,0.000,0.000)Phase1
PIN(105,5,0.000,0.000)Phase0
PIN(105,45,0.000,0.000)InstrIn0
PIN(105,35,0.000,0.000)InstrIn1
PIN(105,25,0.000,0.000)InstrIn2
PIN(105,15,0.000,0.000)InstrIn3
PIN(105,-15,0.000,0.000)Phase2
PIN(145,-5,0.006,0.026)LoadOut
PIN(145,5,0.006,0.026)LoadInst
PIN(145,65,0.006,0.030)EnableA
PIN(145,45,0.006,0.030)EnableIn
PIN(145,25,0.006,0.026)LoadA
PIN(145,-25,0.006,0.026)ReadMem
PIN(145,-15,0.006,0.026)ProgCount
PIN(145,55,0.006,0.030)EnableAlu
PIN(145,75,0.006,0.032)AddSub
PIN(145,15,0.006,0.023)LoadB
PIN(145,35,0.006,0.030)EnableInstr
LIG(105,-25,110,-25)
LIG(105,-5,110,-5)
LIG(105,5,110,5)
LIG(105,45,110,45)
LIG(105,35,110,35)
LIG(105,25,110,25)
LIG(105,15,110,15)
LIG(105,-15,110,-15)
LIG(140,-5,145,-5)
LIG(140,5,145,5)
LIG(140,65,145,65)
LIG(140,45,145,45)
LIG(140,25,145,25)
LIG(140,-25,145,-25)
LIG(140,-15,145,-15)
LIG(140,55,145,55)
LIG(140,75,145,75)
LIG(140,15,145,15)
LIG(140,35,145,35)
LIG(110,-30,110,80)
LIG(110,-30,140,-30)
LIG(140,-30,140,80)
LIG(140,80,110,80)
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
SYM  #Arrow
BB(0,-28,10,-22)
TITLE 0 -30  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(0,-25,0.000,0.000)in
LIG(0,-25,10,-25)
LIG(8,-27,10,-25)
LIG(8,-23,10,-25)
FSYM
SYM  #Arrow
BB(0,-18,10,-12)
TITLE 0 -20  #RST
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(0,-15,0.000,0.000)in
LIG(0,-15,10,-15)
LIG(8,-17,10,-15)
LIG(8,-13,10,-15)
FSYM
SYM  #VSMRingCounter4
BB(30,-35,70,15)
TITLE 40 -42  #VSM-RingCounter4
MODEL 6000
PROP                                                                                                                                    
REC(35,-30,30,40,r)
VIS 5
PIN(30,-25,0.000,0.000)Phase_Count
PIN(30,-15,0.000,0.000)invClear
PIN(70,-25,0.006,0.011)Phase3
PIN(70,-5,0.006,0.018)Phase1
PIN(70,-15,0.006,0.011)Phase2
PIN(70,5,0.006,0.018)Phase0
LIG(30,-25,35,-25)
LIG(30,-15,35,-15)
LIG(65,-25,70,-25)
LIG(65,-5,70,-5)
LIG(65,-15,70,-15)
LIG(65,5,70,5)
LIG(35,-30,35,10)
LIG(35,-30,65,-30)
LIG(65,-30,65,10)
LIG(65,10,35,10)
VLG module VSMRingCounter4( Phase_Count,invClear,Phase3,Phase1,Phase2,Phase0);
VLG input Phase_Count,invClear;
VLG output Phase3,Phase1,Phase2,Phase0;
VLG wire w2,w3,w5,w6,w8,w9,w12,w13;
VLG wire w14,;
VLG xor #(2) xor2_1(Phase3,w2,w3);
VLG dreg #(2) dreg_2(w8,w9,w5,w6,Phase_Count);
VLG xor #(2) xor2_3(Phase2,w8,w2);
VLG xor #(2) xor2_4(Phase1,w5,w8);
VLG dreg #(3) dreg_5(w5,w13,w12,w6,Phase_Count);
VLG dreg #(2) dreg_6(w2,w14,w8,w6,Phase_Count);
VLG dreg #(3) dreg_7(w3,w12,w2,w6,Phase_Count);
VLG xor #(2) xor2_8(Phase0,w3,w13);
VLG not #(2) inv_9(w6,invClear);
VLG endmodule
FSYM
SYM  #button
BB(1,-59,10,-51)
TITLE 5 -55  #MainClock
MODEL 59
PROP                                                                                                                                    
REC(2,-58,6,6,r)
VIS 1
PIN(10,-55,0.000,0.000)MainClock
LIG(9,-55,10,-55)
LIG(1,-51,1,-59)
LIG(9,-51,1,-51)
LIG(9,-59,9,-51)
LIG(1,-59,9,-59)
LIG(2,-52,2,-58)
LIG(8,-52,2,-52)
LIG(8,-58,8,-52)
LIG(2,-58,8,-58)
FSYM
SYM  #button
BB(1,-49,10,-41)
TITLE 5 -45  #MainClear
MODEL 59
PROP   
REC(2,-48,6,6,r)                                                                                                                                 
REC(2,-48,6,6, )
VIS 1
PIN(10,-45,0.000,0.000)MainClear
LIG(9,-45,10,-45)
LIG(1,-41,1,-49)
LIG(9,-41,1,-41)
LIG(9,-49,9,-41)
LIG(1,-49,9,-49)
LIG(2,-42,2,-48)
LIG(8,-42,2,-42)
LIG(8,-48,8,-42)
LIG(2,-48,8,-48)
FSYM
SYM  #Arrow
BB(40,-58,50,-52)
TITLE 40 -60  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(40,-55,0.000,0.000)in
LIG(40,-55,50,-55)
LIG(48,-57,50,-55)
LIG(48,-53,50,-55)
FSYM
SYM  #Arrow
BB(40,-48,50,-42)
TITLE 40 -50  #RST
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(40,-45,0.000,0.000)in
LIG(40,-45,50,-45)
LIG(48,-47,50,-45)
LIG(48,-43,50,-45)
FSYM
SYM  #Arrow
BB(180,62,190,68)
TITLE 180 60  #EnableA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,65,0.000,0.000)in
LIG(180,65,190,65)
LIG(188,63,190,65)
LIG(188,67,190,65)
FSYM
SYM  #Arrow
BB(180,42,190,48)
TITLE 180 40  #EnableIn
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,45,0.000,0.000)in
LIG(180,45,190,45)
LIG(188,43,190,45)
LIG(188,47,190,45)
FSYM
SYM  #Arrow
BB(200,182,210,188)
TITLE 200 180  #LoadInst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(200,185,0.000,0.000)in
LIG(200,185,210,185)
LIG(208,183,210,185)
LIG(208,187,210,185)
FSYM
SYM  #Arrow
BB(180,2,190,8)
TITLE 180 0  #LoadInst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,5,0.000,0.000)in
LIG(180,5,190,5)
LIG(188,3,190,5)
LIG(188,7,190,5)
FSYM
SYM  #VSMInstructionRegister
BB(225,165,265,295)
TITLE 235 158  #VSM-InstructionRegister
MODEL 6000
PROP                                                                                                                                    
REC(230,170,30,120,r)
VIS 5
PIN(225,275,0.000,0.000)Data[0]
PIN(225,265,0.000,0.000)Data[1]
PIN(225,255,0.000,0.000)Data[2]
PIN(225,245,0.000,0.000)Data[3]
PIN(225,225,0.000,0.000)Instr[0]
PIN(225,215,0.000,0.000)Instr[1]
PIN(225,205,0.000,0.000)Instr[2]
PIN(225,195,0.000,0.000)Instr[3]
PIN(225,235,0.000,0.000)EnableInstrReg
PIN(225,185,0.000,0.000)LatchInstrReg
PIN(225,175,0.000,0.000)MainClock
PIN(225,285,0.000,0.000)ClearInstrReg
PIN(265,215,0.006,0.006)B3
PIN(265,225,0.006,0.006)B2
PIN(265,245,0.006,0.006)B0
PIN(265,235,0.006,0.006)B1
PIN(265,205,0.006,0.008)ToInstr0
PIN(265,195,0.006,0.006)ToInstr1
PIN(265,185,0.006,0.006)ToInstr2
PIN(265,175,0.006,0.003)ToInstr3
LIG(225,275,230,275)
LIG(225,265,230,265)
LIG(225,255,230,255)
LIG(225,245,230,245)
LIG(225,225,230,225)
LIG(225,215,230,215)
LIG(225,205,230,205)
LIG(225,195,230,195)
LIG(225,235,230,235)
LIG(225,185,230,185)
LIG(225,175,230,175)
LIG(225,285,230,285)
LIG(260,215,265,215)
LIG(260,225,265,225)
LIG(260,245,265,245)
LIG(260,235,265,235)
LIG(260,205,265,205)
LIG(260,195,265,195)
LIG(260,185,265,185)
LIG(260,175,265,175)
LIG(230,170,230,290)
LIG(230,170,260,170)
LIG(260,170,260,290)
LIG(260,290,230,290)
VLG module VSMInstructionRegister( Data[0],Data[1],Data[2],Data[3],Instr[0],Instr[1],Instr[2],Instr[3],
VLG EnableInstrReg,LatchInstrReg,MainClock,ClearInstrReg,B3,B2,B0,B1,
VLG ToInstr0,ToInstr1,ToInstr2,ToInstr3);
VLG input Data[0],Data[1],Data[2],Data[3],Instr[0],Instr[1],Instr[2],Instr[3];
VLG input EnableInstrReg,LatchInstrReg,MainClock,ClearInstrReg;
VLG output B3,B2,B0,B1,ToInstr0,ToInstr1,ToInstr2,ToInstr3;
VLG wire w16,w18,w19,w20,w22,w24,w25,w26;
VLG wire w28,w30,w32,w33,w34,w35;
VLG and #(4) and2_1(w16,MainClock,LatchInstrReg);
VLG notif1 #(1) notif1_2(B3,w18,EnableInstrReg);
VLG notif1 #(1) notif1_3(B2,w19,EnableInstrReg);
VLG dreg #(2) dreg_4(ToInstr0,w22,Instr[0],w20,w16);
VLG dreg #(2) dreg_5(ToInstr1,w24,Instr[1],w20,w16);
VLG notif1 #(1) notif1_6(B1,w25,EnableInstrReg);
VLG notif1 #(1) notif1_7(B0,w26,EnableInstrReg);
VLG dreg #(2) dreg_8(ToInstr2,w28,Instr[2],w20,w16);
VLG dreg #(2) dreg_9(ToInstr3,w30,Instr[3],w20,w16);
VLG not #(3) inv_10(w20,ClearInstrReg);
VLG dreg #(3) dreg_11(w32,w18,Data[3],w20,w16);
VLG dreg #(3) dreg_12(w33,w19,Data[2],w20,w16);
VLG dreg #(3) dreg_13(w34,w25,Data[1],w20,w16);
VLG dreg #(3) dreg_14(w35,w26,Data[0],w20,w16);
VLG endmodule
FSYM
SYM  #Arrow
BB(180,-28,190,-22)
TITLE 180 -30  #ReadMem
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,-25,0.000,0.000)in
LIG(180,-25,190,-25)
LIG(188,-27,190,-25)
LIG(188,-23,190,-25)
FSYM
SYM  #Arrow
BB(180,-18,190,-12)
TITLE 180 -20  #ProgCount
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,-15,0.000,0.000)in
LIG(180,-15,190,-15)
LIG(188,-17,190,-15)
LIG(188,-13,190,-15)
FSYM
SYM  #Arrow
BB(180,-8,190,-2)
TITLE 180 -10  #LoadOut
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,-5,0.000,0.000)in
LIG(180,-5,190,-5)
LIG(188,-7,190,-5)
LIG(188,-3,190,-5)
FSYM
SYM  #Arrow
BB(180,72,190,78)
TITLE 180 70  #AddSub
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,75,0.000,0.000)in
LIG(180,75,190,75)
LIG(188,73,190,75)
LIG(188,77,190,75)
FSYM
SYM  #Arrow
BB(180,22,190,28)
TITLE 180 20  #LoadA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,25,0.000,0.000)in
LIG(180,25,190,25)
LIG(188,23,190,25)
LIG(188,27,190,25)
FSYM
SYM  #Arrow
BB(180,32,190,38)
TITLE 180 30  #EnableInstr
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,35,0.000,0.000)in
LIG(180,35,190,35)
LIG(188,33,190,35)
LIG(188,37,190,35)
FSYM
SYM  #Arrow
BB(180,52,190,58)
TITLE 180 50  #EnableAlu
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(180,55,0.000,0.000)in
LIG(180,55,190,55)
LIG(188,53,190,55)
LIG(188,57,190,55)
FSYM
SYM  #mem8x8
BB(115,150,165,270)
TITLE 127 165  #Mem8x8
MODEL 865
PROP   01010001 00010010 00110000 00000000 00000000 00000000 00000000 00000000 
REC(127,175,20,40,r)                                                                                                                        
REC(0,0,0,0, )
VIS 3
PIN(115,170,0.000,0.000)Addr2
PIN(115,180,0.000,0.000)Addr1
PIN(115,190,0.000,0.000)Addr0
PIN(115,205,0.000,0.000)Din7
PIN(115,215,0.000,0.000)Din6
PIN(115,225,0.000,0.000)Din5
PIN(115,235,0.000,0.000)Din4
PIN(115,245,0.000,0.000)Din3
PIN(115,255,0.000,0.000)Din2
PIN(115,265,0.000,0.000)Din1
PIN(115,275,0.000,0.000)Din0
PIN(135,150,0.000,0.000)WriteMem
PIN(145,150,0.000,0.000)ReadMem
PIN(165,205,0.003,0.002)Dout7
PIN(165,215,0.003,0.002)Dout6
PIN(165,225,0.003,0.002)Dout5
PIN(165,235,0.003,0.002)Dout4
PIN(165,245,0.003,0.002)Dout3
PIN(165,255,0.003,0.002)Dout2
PIN(165,265,0.003,0.002)Dout1
PIN(165,275,0.003,0.002)Dout0
LIG(165,265,155,265)
LIG(155,255,155,265)
LIG(165,255,155,255)
LIG(155,245,155,255)
LIG(165,245,155,245)
LIG(155,265,155,275)
LIG(125,280,155,280)
LIG(125,275,125,280)
LIG(165,275,155,275)
LIG(115,275,125,275)
LIG(145,160,155,160)
LIG(145,150,145,160)
LIG(135,160,145,160)
LIG(135,150,135,160)
LIG(155,235,155,245)
LIG(165,235,155,235)
LIG(155,225,155,235)
LIG(155,225,165,225)
LIG(155,215,155,225)
LIG(165,215,155,215)
LIG(155,205,155,215)
LIG(155,205,165,205)
LIG(155,160,155,205)
LIG(125,160,135,160)
LIG(125,265,125,275)
LIG(115,265,125,265)
LIG(125,255,125,265)
LIG(115,255,125,255)
LIG(125,245,125,255)
LIG(115,245,125,245)
LIG(125,235,125,245)
LIG(115,235,125,235)
LIG(125,225,125,235)
LIG(115,225,125,225)
LIG(125,215,125,225)
LIG(115,215,125,215)
LIG(125,205,125,215)
LIG(125,190,125,205)
LIG(125,180,125,190)
LIG(125,170,125,180)
LIG(125,160,125,170)
LIG(115,205,125,205)
LIG(115,190,125,190)
LIG(115,180,125,180)
LIG(155,275,155,280)
LIG(115,170,125,170)
FSYM
SYM  #Arrow
BB(115,132,125,138)
TITLE 115 130  #ReadMem
MODEL 935
PROP                                                                                                                                    
REC(-5,0,0,0, )
VIS 4
PIN(115,135,0.000,0.000)in
LIG(115,135,125,135)
LIG(123,133,125,135)
LIG(123,137,125,135)
FSYM
SYM  #VSMCounter16
BB(40,150,80,200)
TITLE 50 143  #VSM-Counter16
MODEL 6000
PROP                                                                                                                                    
REC(45,155,30,40,r)
VIS 5
PIN(40,160,0.000,0.000)MainClock
PIN(40,170,0.000,0.000)EnableCount
PIN(40,180,0.000,0.000)ClearCounter
PIN(80,160,0.006,0.002)PC[3]
PIN(80,170,0.006,0.005)PC[2]
PIN(80,180,0.006,0.005)PC[1]
PIN(80,190,0.006,0.005)PC[0]
LIG(40,160,45,160)
LIG(40,170,45,170)
LIG(40,180,45,180)
LIG(75,160,80,160)
LIG(75,170,80,170)
LIG(75,180,80,180)
LIG(75,190,80,190)
LIG(45,155,45,195)
LIG(45,155,75,155)
LIG(75,155,75,195)
LIG(75,195,45,195)
VLG module VSMCounter16( MainClock,EnableCount,ClearCounter,PC[3],PC[2],PC[1],PC[0]);
VLG input MainClock,EnableCount,ClearCounter;
VLG output PC[3],PC[2],PC[1],PC[0];
VLG wire w4,w10,w11,w12,w13,w14;
VLG and #(2) and2_1(w4,EnableCount,MainClock);
VLG not #(2) inv_2(w10,ClearCounter);
VLG dreg #(3) dreg_3(PC[2],w11,w11,w10,PC[1]);
VLG dreg #(3) dreg_4(PC[3],w12,w12,w10,PC[2]);
VLG dreg #(3) dreg_5(PC[0],w13,w13,w10,w4);
VLG dreg #(3) dreg_6(PC[1],w14,w14,w10,PC[0]);
VLG endmodule
FSYM
SYM  #Arrow
BB(200,172,210,178)
TITLE 200 170  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(200,175,0.000,0.000)in
LIG(200,175,210,175)
LIG(208,173,210,175)
LIG(208,177,210,175)
FSYM
SYM  #Arrow
BB(5,167,15,173)
TITLE 5 165  #ProgCount
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(5,170,0.000,0.000)in
LIG(5,170,15,170)
LIG(13,168,15,170)
LIG(13,172,15,170)
FSYM
SYM  #Arrow
BB(5,177,15,183)
TITLE 5 175  #RST
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(5,180,0.000,0.000)in
LIG(5,180,15,180)
LIG(13,178,15,180)
LIG(13,182,15,180)
FSYM
SYM  #Arrow
BB(5,157,15,163)
TITLE 5 155  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(5,160,0.000,0.000)in
LIG(5,160,15,160)
LIG(13,158,15,160)
LIG(13,162,15,160)
FSYM
SYM  #Arrow
BB(210,232,220,238)
TITLE 210 230  #EnableInstr
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(210,235,0.000,0.000)in
LIG(210,235,220,235)
LIG(218,233,220,235)
LIG(218,237,220,235)
FSYM
SYM  #vss
BB(110,142,120,150)
TITLE 114 147  #vss
MODEL 0
PROP                                                                                                                                    
REC(110,140,0,0,b)
VIS 0
PIN(115,140,0.000,0.000)vss
LIG(115,140,115,145)
LIG(110,145,120,145)
LIG(110,148,112,145)
LIG(112,148,114,145)
LIG(114,148,116,145)
LIG(116,148,118,145)
FSYM
SYM  #Arrow
BB(205,282,215,288)
TITLE 205 280  #RST
MODEL 935
PROP                                                                                                                                    
REC(-5,0,0,0, )
VIS 4
PIN(205,285,0.000,0.000)in
LIG(205,285,215,285)
LIG(213,283,215,285)
LIG(213,287,215,285)
FSYM
SYM  #VSMAccumulatorB
BB(340,-25,380,55)
TITLE 350 -32  #VSM-AccumulatorB
MODEL 6000
PROP                                                                                                                                    
REC(345,-20,30,70,r)
VIS 5
PIN(340,45,0.000,0.000)Kbd[0]
PIN(340,35,0.000,0.000)Kbd[1]
PIN(340,25,0.000,0.000)Kbd[2]
PIN(340,15,0.000,0.000)Kbd[3]
PIN(340,5,0.000,0.000)ClearB
PIN(340,-5,0.000,0.000)LatchB
PIN(340,-15,0.000,0.000)MainClock
PIN(380,-15,0.006,0.006)AluB3
PIN(380,-5,0.006,0.006)AluB2
PIN(380,5,0.006,0.006)AluB1
PIN(380,15,0.006,0.006)AluB0
LIG(340,45,345,45)
LIG(340,35,345,35)
LIG(340,25,345,25)
LIG(340,15,345,15)
LIG(340,5,345,5)
LIG(340,-5,345,-5)
LIG(340,-15,345,-15)
LIG(375,-15,380,-15)
LIG(375,-5,380,-5)
LIG(375,5,380,5)
LIG(375,15,380,15)
LIG(345,-20,345,50)
LIG(345,-20,375,-20)
LIG(375,-20,375,50)
LIG(375,50,345,50)
VLG module VSMAccumulatorB( Kbd[0],Kbd[1],Kbd[2],Kbd[3],ClearB,LatchB,MainClock,AluB3,
VLG AluB2,AluB1,AluB0);
VLG input Kbd[0],Kbd[1],Kbd[2],Kbd[3],ClearB,LatchB,MainClock;
VLG output AluB3,AluB2,AluB1,AluB0;
VLG wire w12,w13,w15,w16,w17,w18;
VLG not #(2) inv_1(w12,ClearB);
VLG and #(3) and2_2(w13,MainClock,LatchB);
VLG dreg #(2) dreg_3(AluB0,w15,Kbd[0],w12,w13);
VLG dreg #(2) dreg_4(AluB3,w16,Kbd[3],w12,w13);
VLG dreg #(2) dreg_5(AluB2,w17,Kbd[2],w12,w13);
VLG dreg #(2) dreg_6(AluB1,w18,Kbd[1],w12,w13);
VLG endmodule
FSYM
SYM  #VSMAccumulatorA
BB(345,110,385,200)
TITLE 355 103  #VSM-AccumulatorA
MODEL 6000
PROP                                                                                                                                    
REC(350,115,30,80,r)
VIS 5
PIN(345,190,0.000,0.000)A[0]
PIN(345,180,0.000,0.000)A[1]
PIN(345,170,0.000,0.000)A[2]
PIN(345,160,0.000,0.000)A[3]
PIN(345,130,0.000,0.000)LatchA
PIN(345,150,0.000,0.000)ClearA
PIN(345,140,0.000,0.000)EnableA
PIN(345,120,0.000,0.000)MainClock
PIN(385,170,0.006,0.005)AluA2
PIN(385,160,0.006,0.005)AluA3
PIN(385,180,0.006,0.005)AluA1
PIN(385,190,0.006,0.005)AluA0
PIN(385,150,0.006,0.006)B0
PIN(385,140,0.006,0.006)B1
PIN(385,130,0.006,0.006)B2
PIN(385,120,0.006,0.006)B3
LIG(345,190,350,190)
LIG(345,180,350,180)
LIG(345,170,350,170)
LIG(345,160,350,160)
LIG(345,130,350,130)
LIG(345,150,350,150)
LIG(345,140,350,140)
LIG(345,120,350,120)
LIG(380,170,385,170)
LIG(380,160,385,160)
LIG(380,180,385,180)
LIG(380,190,385,190)
LIG(380,150,385,150)
LIG(380,140,385,140)
LIG(380,130,385,130)
LIG(380,120,385,120)
LIG(350,115,350,195)
LIG(350,115,380,115)
LIG(380,115,380,195)
LIG(380,195,350,195)
VLG module VSMAccumulatorA( A[0],A[1],A[2],A[3],LatchA,ClearA,EnableA,MainClock,
VLG AluA2,AluA3,AluA1,AluA0,B0,B1,B2,B3);
VLG input A[0],A[1],A[2],A[3],LatchA,ClearA,EnableA,MainClock;
VLG output AluA2,AluA3,AluA1,AluA0,B0,B1,B2,B3;
VLG wire w13,w14,w15,w16,w18,w19,;
VLG dreg #(3) dreg_1(AluA3,w15,A[3],w13,w14);
VLG dreg #(3) dreg_2(AluA2,w16,A[2],w13,w14);
VLG and #(3) and2_3(w14,MainClock,LatchA);
VLG not #(2) inv_4(w13,ClearA);
VLG dreg #(3) dreg_5(AluA1,w18,A[1],w13,w14);
VLG dreg #(3) dreg_6(AluA0,w19,A[0],w13,w14);
VLG notif1 #(1) notif1_7(B0,w19,EnableA);
VLG notif1 #(1) notif1_8(B1,w18,EnableA);
VLG notif1 #(1) notif1_9(B2,w16,EnableA);
VLG notif1 #(1) notif1_10(B3,w15,EnableA);
VLG endmodule
FSYM
SYM  #Arrow
BB(310,117,320,123)
TITLE 310 115  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(310,120,0.000,0.000)in
LIG(310,120,320,120)
LIG(318,118,320,120)
LIG(318,122,320,120)
FSYM
SYM  #Arrow
BB(310,-18,320,-12)
TITLE 310 -20  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(310,-15,0.000,0.000)in
LIG(310,-15,320,-15)
LIG(318,-17,320,-15)
LIG(318,-13,320,-15)
FSYM
SYM  #Arrow
BB(310,127,320,133)
TITLE 310 125  #LoadA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(310,130,0.000,0.000)in
LIG(310,130,320,130)
LIG(318,128,320,130)
LIG(318,132,320,130)
FSYM
SYM  #Arrow
BB(310,137,320,143)
TITLE 310 135  #EnableA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(310,140,0.000,0.000)in
LIG(310,140,320,140)
LIG(318,138,320,140)
LIG(318,142,320,140)
FSYM
SYM  #Arrow
BB(310,147,320,153)
TITLE 310 145  #RST
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(310,150,0.000,0.000)in
LIG(310,150,320,150)
LIG(318,148,320,150)
LIG(318,152,320,150)
FSYM
SYM  #Arrow
BB(310,2,320,8)
TITLE 310 0  #RST
MODEL 935
PROP   
REC(0,0,0,0, )                                                                                                                               
REC(0,0,0,0, )
VIS 4
PIN(310,5,0.000,0.000)in
LIG(310,5,320,5)
LIG(318,3,320,5)
LIG(318,7,320,5)
FSYM
SYM  #VSMArithmeticUnit
BB(525,-35,565,75)
TITLE 535 -42  #VSM-ArithmeticUnit
MODEL 6000
PROP                                                                                                                                    
REC(530,-30,30,100,r)
VIS 5
PIN(525,65,0.000,0.000)A[0]
PIN(525,55,0.000,0.000)A[1]
PIN(525,45,0.000,0.000)A[2]
PIN(525,35,0.000,0.000)A[3]
PIN(525,15,0.000,0.000)B[0]
PIN(525,5,0.000,0.000)B[1]
PIN(525,-5,0.000,0.000)B[2]
PIN(525,-15,0.000,0.000)B[3]
PIN(525,-25,0.000,0.000)EnableAlu
PIN(525,25,0.000,0.000)AddSub
PIN(565,15,0.006,0.002)Carry
PIN(565,-25,0.006,0.006)IB_Alu[3]
PIN(565,-15,0.006,0.006)IB_Alu[2]
PIN(565,-5,0.006,0.006)IB_Alu[1]
PIN(565,5,0.003,0.006)IB_Alu[0]
LIG(525,65,530,65)
LIG(525,55,530,55)
LIG(525,45,530,45)
LIG(525,35,530,35)
LIG(525,15,530,15)
LIG(525,5,530,5)
LIG(525,-5,530,-5)
LIG(525,-15,530,-15)
LIG(525,-25,530,-25)
LIG(525,25,530,25)
LIG(560,15,565,15)
LIG(560,-25,565,-25)
LIG(560,-15,565,-15)
LIG(560,-5,565,-5)
LIG(560,5,565,5)
LIG(530,-30,530,70)
LIG(530,-30,560,-30)
LIG(560,-30,560,70)
LIG(560,70,530,70)
VLG module VSMArithmeticUnit( A[0],A[1],A[2],A[3],B[0],B[1],B[2],B[3],
VLG EnableAlu,AddSub,Carry,IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0]);
VLG input A[0],A[1],A[2],A[3],B[0],B[1],B[2],B[3];
VLG input EnableAlu,AddSub;
VLG output Carry,IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0];
VLG wire w2,w5,w7,w10,w12,w14,w21,w24;
VLG wire w25,w26,w27,w28,w29,w30,w31,w32;
VLG wire w33,w34,w35,w36;
VLG bufif1 #(1) bufif1_1(IB_Alu[0],w2,EnableAlu);
VLG bufif1 #(1) bufif1_2(IB_Alu[1],w5,EnableAlu);
VLG bufif1 #(1) bufif1_3(IB_Alu[2],w7,EnableAlu);
VLG not #(1) inv_4(w10,A[3]);
VLG mux #(2) mux_5(w12,A[3],w10,AddSub);
VLG not #(1) inv_6(w14,A[0]);
VLG bufif1 #(1) bufif1_7(IB_Alu[3],w21,EnableAlu);
VLG mux #(1) mux_8(w29,vss,vdd,AddSub);
VLG mux #(2) mux_9(w30,A[0],w14,AddSub);
VLG mux #(2) mux_10(w28,A[1],w31,AddSub);
VLG mux #(2) mux_11(w25,A[2],w32,AddSub);
VLG not #(1) inv_12(w32,A[2]);
VLG not #(1) inv_13(w31,A[1]);
VLG assign w26=(B[2]&w25)|(w24&(B[2]|w25))
VLG xor #(1) xor2_1_14(w33,B[2],w25);
VLG xor #(1) xor2_2_15(w7,w33,w24);
VLG assign w24=(B[1]&w28)|(w27&(B[1]|w28))
VLG xor #(1) xor2_1_16(w34,B[1],w28);
VLG xor #(1) xor2_2_17(w5,w34,w27);
VLG assign w27=(B[0]&w30)|(w29&(B[0]|w30))
VLG xor #(1) xor2_1_18(w35,B[0],w30);
VLG xor #(1) xor2_2_19(w2,w35,w29);
VLG assign Carry=(B[3]&w12)|(w26&(B[3]|w12))
VLG xor #(1) xor2_1_20(w36,B[3],w12);
VLG xor #(1) xor2_2_21(w21,w36,w26);
VLG endmodule
FSYM
SYM  #Arrow
BB(480,22,490,28)
TITLE 480 20  #AddSub
MODEL 935
PROP                                                                                                                                    
REC(-25,0,0,0, )
VIS 4
PIN(480,25,0.000,0.000)in
LIG(480,25,490,25)
LIG(488,23,490,25)
LIG(488,27,490,25)
FSYM
SYM  #Arrow
BB(480,-28,490,-22)
TITLE 480 -30  #EnableAlu
MODEL 935
PROP                                                                                                                                    
REC(-25,0,0,0, )
VIS 4
PIN(480,-25,0.000,0.000)in
LIG(480,-25,490,-25)
LIG(488,-27,490,-25)
LIG(488,-23,490,-25)
FSYM
SYM  #digit
BB(770,10,795,45)
TITLE 770 42  #DataOut
MODEL 89
PROP                                                                                                                                    
REC(775,15,15,21,r)
VIS 4
PIN(775,45,0.000,0.000)DataOut[3]
PIN(780,45,0.000,0.000)DataOut[2]
PIN(785,45,0.000,0.000)DataOut[1]
PIN(790,45,0.000,0.000)DataOut[0]
LIG(770,10,770,40)
LIG(795,10,770,10)
LIG(795,40,795,10)
LIG(770,40,795,40)
LIG(775,40,775,45)
LIG(780,40,780,45)
LIG(785,40,785,45)
LIG(790,40,790,45)
FSYM
SYM  #Arrow
BB(495,217,505,223)
TITLE 495 215  #EnableIn
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(495,220,0.000,0.000)in
LIG(495,220,505,220)
LIG(503,218,505,220)
LIG(503,222,505,220)
FSYM
SYM  #kbd
BB(465,225,515,265)
TITLE 465 267  #DataIn
MODEL 85
PROP                                                                                                                                    
REC(465,225,40,40,r)
VIS 4
PIN(515,260,0.000,0.000)DataIn[0]
PIN(515,250,0.000,0.000)DataIn[1]
PIN(515,240,0.000,0.000)DataIn[2]
PIN(515,230,0.000,0.000)DataIn[3]
LIG(505,225,505,265)
LIG(465,225,505,225)
LIG(465,225,465,265)
LIG(499,230,499,233)
LIG(465,245,505,245)
LIG(485,225,485,265)
LIG(475,265,475,225)
LIG(465,235,505,235)
LIG(495,225,495,265)
LIG(465,255,505,255)
LIG(505,260,515,260)
LIG(515,250,505,250)
LIG(505,240,515,240)
LIG(515,230,505,230)
LIG(469,263,469,257)
LIG(469,257,471,257)
LIG(471,257,471,263)
LIG(471,263,469,263)
LIG(481,263,481,257)
LIG(489,257,491,257)
LIG(491,257,491,259)
LIG(491,259,489,259)
LIG(489,259,489,263)
LIG(489,263,491,263)
LIG(499,263,501,263)
LIG(501,257,499,257)
LIG(501,257,501,263)
LIG(499,259,501,259)
LIG(469,247,469,251)
LIG(469,251,471,251)
LIG(471,247,471,253)
LIG(481,247,479,247)
LIG(479,247,479,249)
LIG(479,249,481,249)
LIG(481,249,481,253)
LIG(481,253,479,253)
LIG(489,247,489,253)
LIG(489,253,491,253)
LIG(491,253,491,249)
LIG(491,249,489,249)
LIG(499,247,501,247)
LIG(501,247,501,253)
LIG(469,237,469,243)
LIG(469,237,471,237)
LIG(471,237,471,243)
LIG(471,243,469,243)
LIG(469,239,471,239)
LIG(499,230,501,230)
LIG(465,265,505,265)
LIG(479,237,481,237)
LIG(499,227,499,230)
LIG(488,233,488,230)
LIG(488,227,491,227)
LIG(479,227,479,233)
LIG(468,233,468,227)
LIG(468,227,471,227)
LIG(498,237,501,237)
LIG(501,237,502,238)
LIG(502,238,501,239)
LIG(498,239,501,239)
LIG(498,243,498,239)
LIG(479,239,481,239)
LIG(468,233,471,233)
LIG(479,237,479,239)
LIG(481,239,481,243)
LIG(481,237,481,239)
LIG(481,243,479,243)
LIG(488,233,491,233)
LIG(488,243,490,237)
LIG(490,237,492,243)
LIG(498,239,498,237)
LIG(501,239,502,240)
LIG(499,227,502,227)
LIG(502,240,502,242)
LIG(488,241,492,241)
LIG(482,232,481,233)
LIG(502,242,501,243)
LIG(488,230,488,227)
LIG(488,230,490,230)
LIG(482,228,482,232)
LIG(481,227,482,228)
LIG(478,233,479,233)
LIG(478,227,479,227)
LIG(498,243,501,243)
LIG(479,227,481,227)
LIG(479,233,481,233)
FSYM
SYM  #VSMInRegister
BB(540,210,580,270)
TITLE 550 203  #VSM-InRegister
MODEL 6000
PROP                                                                                                                                    
REC(545,215,30,50,r)
VIS 5
PIN(540,260,0.000,0.000)DataIn[0]
PIN(540,250,0.000,0.000)DataIn[1]
PIN(540,240,0.000,0.000)DataIn[2]
PIN(540,230,0.000,0.000)DataIn[3]
PIN(540,220,0.000,0.000)EnableIn
PIN(580,240,0.006,0.006)B1
PIN(580,220,0.006,0.006)B3
PIN(580,230,0.006,0.006)B2
PIN(580,250,0.006,0.006)B0
LIG(540,260,545,260)
LIG(540,250,545,250)
LIG(540,240,545,240)
LIG(540,230,545,230)
LIG(540,220,545,220)
LIG(575,240,580,240)
LIG(575,220,580,220)
LIG(575,230,580,230)
LIG(575,250,580,250)
LIG(545,215,545,265)
LIG(545,215,575,215)
LIG(575,215,575,265)
LIG(575,265,545,265)
VLG module VSMInRegister( DataIn[0],DataIn[1],DataIn[2],DataIn[3],EnableIn,B1,B3,B2,
VLG input DataIn[0],DataIn[1],DataIn[2],DataIn[3],EnableIn;
VLG output B1,B3,B2,B0;
VLG wire ;
VLG bufif1 #(1) bufif1_1(B0,DataIn[0],EnableIn);
VLG bufif1 #(1) bufif1_2(B1,DataIn[1],EnableIn);
VLG bufif1 #(1) bufif1_3(B2,DataIn[2],EnableIn);
VLG bufif1 #(1) bufif1_4(B3,DataIn[3],EnableIn);
VLG endmodule
FSYM
SYM  #digit
BB(605,-70,630,-35)
TITLE 605 -38  #IB
MODEL 89
PROP                                                                                                                                    
REC(610,-65,15,21,r)
VIS 4
PIN(610,-35,0.000,0.000)IB[3]
PIN(615,-35,0.000,0.000)IB[2]
PIN(620,-35,0.000,0.000)IB[1]
PIN(625,-35,0.000,0.000)IB[0]
LIG(605,-70,605,-40)
LIG(630,-70,605,-70)
LIG(630,-40,630,-70)
LIG(605,-40,630,-40)
LIG(610,-40,610,-35)
LIG(615,-40,615,-35)
LIG(620,-40,620,-35)
LIG(625,-40,625,-35)
FSYM
SYM  #VSMOutRegister
BB(700,45,740,125)
TITLE 710 38  #VSM-OutRegister
MODEL 6000
PROP                                                                                                                                    
REC(705,50,30,70,r)
VIS 5
PIN(700,115,0.000,0.000)IB[0]
PIN(700,105,0.000,0.000)IB[1]
PIN(700,95,0.000,0.000)IB[2]
PIN(700,85,0.000,0.000)IB[3]
PIN(700,65,0.000,0.000)MainClock
PIN(700,55,0.000,0.000)invMainReset
PIN(700,75,0.000,0.000)LoadOut
PIN(740,55,0.006,0.003)Out4
PIN(740,65,0.006,0.003)Out3
PIN(740,75,0.006,0.003)Out2
PIN(740,85,0.006,0.003)Out1
LIG(700,115,705,115)
LIG(700,105,705,105)
LIG(700,95,705,95)
LIG(700,85,705,85)
LIG(700,65,705,65)
LIG(700,55,705,55)
LIG(700,75,705,75)
LIG(735,55,740,55)
LIG(735,65,740,65)
LIG(735,75,740,75)
LIG(735,85,740,85)
LIG(705,50,705,120)
LIG(705,50,735,50)
LIG(735,50,735,120)
LIG(735,120,705,120)
VLG module VSMOutRegister( IB[0],IB[1],IB[2],IB[3],MainClock,invMainReset,LoadOut,Out4,
VLG Out3,Out2,Out1);
VLG input IB[0],IB[1],IB[2],IB[3],MainClock,invMainReset,LoadOut;
VLG output Out4,Out3,Out2,Out1;
VLG wire w10,w11,w12,w16,w17,w18;
VLG dreg #(2) dreg_1(Out4,w12,IB[3],w10,w11);
VLG not #(2) inv_2(w10,invMainReset);
VLG nand #(2) nand2_3(w11,MainClock,LoadOut);
VLG dreg #(2) dreg_4(Out3,w16,IB[2],w10,w11);
VLG dreg #(2) dreg_5(Out2,w17,IB[1],w10,w11);
VLG dreg #(2) dreg_6(Out1,w18,IB[0],w10,w11);
VLG endmodule
FSYM
SYM  #Arrow
BB(660,62,670,68)
TITLE 660 60  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(660,65,0.000,0.000)in
LIG(660,65,670,65)
LIG(668,63,670,65)
LIG(668,67,670,65)
FSYM
SYM  #Arrow
BB(660,72,670,78)
TITLE 660 70  #LoadOut
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(660,75,0.000,0.000)in
LIG(660,75,670,75)
LIG(668,73,670,75)
LIG(668,77,670,75)
FSYM
SYM  #vdd
BB(655,40,665,50)
TITLE 658 46  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(660,50,0.000,0.000)vdd
LIG(660,50,660,45)
LIG(660,45,655,45)
LIG(655,45,660,40)
LIG(660,40,665,45)
LIG(665,45,660,45)
FSYM
CNC(325 245)
CNC(320 235)
CNC(315 225)
CNC(310 215)
CNC(420 150)
CNC(425 140)
CNC(430 130)
CNC(435 120)
CNC(625 5)
CNC(620 -5)
CNC(615 -15)
CNC(610 -25)
CNC(625 115)
CNC(620 105)
CNC(615 95)
CNC(610 85)
CNC(435 120)
CNC(610 120)
CNC(430 130)
CNC(615 130)
CNC(425 140)
CNC(620 140)
CNC(420 150)
CNC(625 150)
LIG(10,-55,40,-55)
LIG(10,-45,40,-45)
LIG(0,-25,30,-25)
LIG(0,-15,30,-15)
LIG(70,-25,105,-25)
LIG(70,5,105,5)
LIG(70,-5,105,-5)
LIG(70,-15,105,-15)
LIG(145,-25,180,-25)
LIG(145,-15,180,-15)
LIG(145,-5,180,-5)
LIG(145,5,180,5)
LIG(145,25,180,25)
LIG(145,35,180,35)
LIG(145,45,180,45)
LIG(145,55,180,55)
LIG(145,65,180,65)
LIG(145,75,180,75)
LIG(290,185,290,110)
LIG(265,185,290,185)
LIG(80,170,115,170)
LIG(80,180,115,180)
LIG(80,190,115,190)
LIG(5,160,40,160)
LIG(5,170,40,170)
LIG(5,180,40,180)
LIG(135,150,135,140)
LIG(285,175,265,175)
LIG(285,115,285,175)
LIG(145,150,145,135)
LIG(80,115,285,115)
LIG(115,135,145,135)
LIG(165,275,225,275)
LIG(165,265,225,265)
LIG(165,255,225,255)
LIG(165,245,225,245)
LIG(80,15,80,115)
LIG(105,15,80,15)
LIG(200,185,225,185)
LIG(200,175,225,175)
LIG(135,140,115,140)
LIG(205,285,225,285)
LIG(210,235,225,235)
LIG(165,225,200,225)
LIG(200,225,200,215)
LIG(205,235,205,225)
LIG(205,225,225,225)
LIG(200,215,225,215)
LIG(165,215,195,215)
LIG(190,195,225,195)
LIG(190,205,190,195)
LIG(165,205,190,205)
LIG(195,205,225,205)
LIG(195,215,195,205)
LIG(105,25,85,25)
LIG(85,25,85,110)
LIG(85,110,290,110)
LIG(105,35,90,35)
LIG(90,35,90,105)
LIG(90,105,295,105)
LIG(105,45,95,45)
LIG(95,45,95,100)
LIG(95,100,300,100)
LIG(295,105,295,195)
LIG(295,195,265,195)
LIG(265,205,300,205)
LIG(300,205,300,100)
LIG(345,160,310,160)
LIG(310,160,310,215)
LIG(310,215,265,215)
LIG(265,225,315,225)
LIG(325,190,345,190)
LIG(325,245,325,190)
LIG(265,245,325,245)
LIG(320,180,345,180)
LIG(320,235,320,180)
LIG(265,235,320,235)
LIG(315,170,345,170)
LIG(315,225,315,170)
LIG(340,-5,265,-5)
LIG(265,15,145,15)
LIG(265,-5,265,15)
LIG(310,-15,340,-15)
LIG(310,120,345,120)
LIG(310,150,345,150)
LIG(310,140,345,140)
LIG(310,5,340,5)
LIG(310,130,345,130)
LIG(325,245,325,260)
LIG(325,260,420,260)
LIG(310,275,310,215)
LIG(435,275,310,275)
LIG(435,120,435,275)
LIG(420,85,295,85)
LIG(295,85,295,45)
LIG(295,45,345,45)
LIG(305,25,305,75)
LIG(205,235,165,235)
LIG(300,80,425,80)
LIG(435,70,435,120)
LIG(385,120,435,120)
LIG(425,265,320,265)
LIG(320,265,320,235)
LIG(775,55,740,55)
LIG(775,45,775,55)
LIG(305,75,430,75)
LIG(310,70,435,70)
LIG(310,15,310,70)
LIG(430,130,430,270)
LIG(430,270,315,270)
LIG(315,270,315,225)
LIG(345,15,310,15)
LIG(385,150,420,150)
LIG(420,85,420,150)
LIG(420,150,420,260)
LIG(385,140,425,140)
LIG(425,80,425,140)
LIG(425,140,425,265)
LIG(385,130,430,130)
LIG(430,75,430,130)
LIG(515,55,525,55)
LIG(380,-15,525,-15)
LIG(380,-5,525,-5)
LIG(380,5,525,5)
LIG(380,15,525,15)
LIG(515,180,515,55)
LIG(385,180,515,180)
LIG(525,65,520,65)
LIG(520,65,520,190)
LIG(520,190,385,190)
LIG(385,170,510,170)
LIG(510,170,510,45)
LIG(510,45,525,45)
LIG(385,160,505,160)
LIG(505,160,505,35)
LIG(505,35,525,35)
LIG(480,-25,525,-25)
LIG(480,25,525,25)
LIG(780,65,740,65)
LIG(610,-35,610,-25)
LIG(565,-25,610,-25)
LIG(780,45,780,65)
LIG(495,220,540,220)
LIG(615,-35,615,-15)
LIG(565,-15,615,-15)
LIG(785,75,740,75)
LIG(515,230,540,230)
LIG(620,-35,620,-5)
LIG(565,-5,620,-5)
LIG(785,45,785,75)
LIG(515,240,540,240)
LIG(625,-35,625,5)
LIG(565,5,625,5)
LIG(610,220,580,220)
LIG(515,250,540,250)
LIG(615,230,580,230)
LIG(620,240,580,240)
LIG(625,250,580,250)
LIG(515,260,540,260)
LIG(700,115,625,115)
LIG(740,85,790,85)
LIG(790,45,790,85)
LIG(625,5,625,115)
LIG(625,150,625,250)
LIG(700,105,620,105)
LIG(660,55,660,50)
LIG(700,55,660,55)
LIG(660,75,700,75)
LIG(620,-5,620,105)
LIG(625,115,625,150)
LIG(700,95,615,95)
LIG(660,65,700,65)
LIG(420,150,625,150)
LIG(610,-25,610,85)
LIG(615,-15,615,95)
LIG(620,140,620,240)
LIG(700,85,610,85)
LIG(340,25,305,25)
LIG(300,35,345,35)
LIG(300,35,300,80)
LIG(435,120,610,120)
LIG(610,85,610,120)
LIG(610,120,610,220)
LIG(430,130,615,130)
LIG(615,95,615,130)
LIG(615,130,615,230)
LIG(425,140,620,140)
LIG(620,105,620,140)
FFIG C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-Microprocessor.sch
