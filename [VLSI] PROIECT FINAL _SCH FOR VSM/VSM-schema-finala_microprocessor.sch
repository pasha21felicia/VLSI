DSCH 3.5
VERSION 15/05/2022 16:51:36
BB(-30,-40,735,320)
SYM  #button
BB(-9,-14,0,-6)
TITLE -5 -10  #MainClock
MODEL 59
PROP                                                                                                                                    
REC(-8,-13,6,6,r)
VIS 1
PIN(0,-10,0.000,0.000)MainClock
LIG(-1,-10,0,-10)
LIG(-9,-6,-9,-14)
LIG(-1,-6,-9,-6)
LIG(-1,-14,-1,-6)
LIG(-9,-14,-1,-14)
LIG(-8,-7,-8,-13)
LIG(-2,-7,-8,-7)
LIG(-2,-13,-2,-7)
LIG(-8,-13,-2,-13)
FSYM
SYM  #button
BB(-9,-4,0,4)
TITLE -5 0  #MainClear
MODEL 59
PROP                                                                                                                                    
REC(-8,-3,6,6,r)
VIS 1
PIN(0,0,0.000,0.000)MainClear
LIG(-1,0,0,0)
LIG(-9,4,-9,-4)
LIG(-1,4,-9,4)
LIG(-1,-4,-1,4)
LIG(-9,-4,-1,-4)
LIG(-8,3,-8,-3)
LIG(-2,3,-8,3)
LIG(-2,-3,-2,3)
LIG(-8,-3,-2,-3)
FSYM
SYM  #Arrow
BB(5,-13,15,-7)
TITLE 5 -15  #Clk
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(5,-10,0.000,0.000)in
LIG(5,-10,15,-10)
LIG(13,-12,15,-10)
LIG(13,-8,15,-10)
FSYM
SYM  #Arrow
BB(5,-3,15,3)
TITLE 5 -5  #Rst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(5,0,0.000,0.000)in
LIG(5,0,15,0)
LIG(13,-2,15,0)
LIG(13,2,15,0)
FSYM
SYM  #RingCounter4
BB(-5,15,35,65)
TITLE 5 8  #RingCounter4
MODEL 6000
PROP                                                                                                                                    
REC(0,20,30,40,r)
VIS 5
PIN(-5,35,0.000,0.000)invClear
PIN(-5,25,0.000,0.000)Phase_Count
PIN(35,25,0.010,0.014)Phase3
PIN(35,35,0.010,0.014)Phase2
PIN(35,45,0.010,0.024)Phase1
PIN(35,55,0.010,0.024)Phase0
LIG(-5,35,0,35)
LIG(-5,25,0,25)
LIG(30,25,35,25)
LIG(30,35,35,35)
LIG(30,45,35,45)
LIG(30,55,35,55)
LIG(0,20,0,60)
LIG(0,20,30,20)
LIG(30,20,30,60)
LIG(30,60,0,60)
VLG module RingCounter4( invClear,Phase_Count,Phase3,Phase2,Phase1,Phase0);
VLG input invClear,Phase_Count;
VLG output Phase3,Phase2,Phase1,Phase0;
VLG wire w3,w6,w7,w8,w9,w10,w11,w12;
VLG wire w13,;
VLG not #(3) inv_1(w3,invClear);
VLG dreg #(4) dreg_2(w7,w8,w6,w3,Phase_Count);
VLG dreg #(4) dreg_3(w6,w10,w9,w3,Phase_Count);
VLG dreg #(4) dreg_4(w9,w12,w11,w3,Phase_Count);
VLG dreg #(4) dreg_5(w13,w11,w7,w3,Phase_Count);
VLG xor #(3) xor2_6(Phase2,w6,w7);
VLG xor #(3) xor2_7(Phase3,w7,w13);
VLG xor #(3) xor2_8(Phase1,w9,w6);
VLG xor #(3) xor2_9(Phase0,w13,w12);
VLG endmodule
FSYM
SYM  #Arrow
BB(-25,22,-15,28)
TITLE -25 20  #Clk
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-25,25,0.000,0.000)in
LIG(-25,25,-15,25)
LIG(-17,23,-15,25)
LIG(-17,27,-15,25)
FSYM
SYM  #Arrow
BB(-25,32,-15,38)
TITLE -25 30  #Rst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-25,35,0.000,0.000)in
LIG(-25,35,-15,35)
LIG(-17,33,-15,35)
LIG(-17,37,-15,35)
FSYM
SYM  #Arrow
BB(135,32,145,38)
TITLE 135 30  #ProgCount
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,35,0.000,0.000)in
LIG(135,35,145,35)
LIG(143,33,145,35)
LIG(143,37,145,35)
FSYM
SYM  #MicroInstruction
BB(75,15,115,135)
TITLE 85 8  #MicroInstruction
MODEL 6000
PROP                                                                                                                                   
REC(80,20,30,110,r)
VIS 5
PIN(75,45,0.000,0.000)Phase1
PIN(75,35,0.000,0.000)Phase2
PIN(75,55,0.000,0.000)Phase0
PIN(75,65,0.000,0.000)Instr3
PIN(75,75,0.000,0.000)Instr2
PIN(75,85,0.000,0.000)Instr1
PIN(75,95,0.000,0.000)Instr0
PIN(75,25,0.000,0.000)Phase3
PIN(115,95,0.010,0.040)EnableIn
PIN(115,35,0.010,0.034)ProgCount
PIN(115,125,0.010,0.042)AddSub
PIN(115,105,0.010,0.040)EnableAlu
PIN(115,65,0.010,0.034)LoadB
PIN(115,25,0.010,0.034)ReadMem
PIN(115,45,0.010,0.034)LoadOut
PIN(115,75,0.010,0.034)LoadA
PIN(115,55,0.010,0.034)LoadInst
PIN(115,85,0.010,0.040)EnableInstr
PIN(115,115,0.010,0.040)EnableA
LIG(75,45,80,45)
LIG(75,35,80,35)
LIG(75,55,80,55)
LIG(75,65,80,65)
LIG(75,75,80,75)
LIG(75,85,80,85)
LIG(75,95,80,95)
LIG(75,25,80,25)
LIG(110,95,115,95)
LIG(110,35,115,35)
LIG(110,125,115,125)
LIG(110,105,115,105)
LIG(110,65,115,65)
LIG(110,25,115,25)
LIG(110,45,115,45)
LIG(110,75,115,75)
LIG(110,55,115,55)
LIG(110,85,115,85)
LIG(110,115,115,115)
LIG(80,20,80,130)
LIG(80,20,110,20)
LIG(110,20,110,130)
LIG(110,130,80,130)
VLG module MicroInstruction( Phase1,Phase2,Phase0,Instr3,Instr2,Instr1,Instr0,Phase3,
VLG EnableIn,ProgCount,AddSub,EnableAlu,LoadB,ReadMem,LoadOut,LoadA,
VLG LoadInst,EnableInstr,EnableA);
VLG input Phase1,Phase2,Phase0,Instr3,Instr2,Instr1,Instr0,Phase3;
VLG output EnableIn,ProgCount,AddSub,EnableAlu,LoadB,ReadMem,LoadOut,LoadA;
VLG output LoadInst,EnableInstr,EnableA;
VLG wire w4,w5,w7,w8,w9,w10,w11,w12;
VLG wire w13,w14,w15,w16,w18,w19,w21,w27;
VLG wire w28,w29,w32,w33,w40,;
VLG nmos #(7) nmos_1(EnableIn,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_2(EnableIn,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_3(EnableIn,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_4(EnableIn,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_5(EnableIn,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_6(EnableIn,vss,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_7(EnableIn,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_8(EnableIn,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_9(EnableIn,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_10(EnableIn,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_11(EnableIn,vss,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_12(EnableIn,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_13(EnableIn,vdd,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_14(EnableIn,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_15(ProgCount,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_16(ProgCount,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_17(ProgCount,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_18(ProgCount,vss,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_19(ProgCount,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_20(ProgCount,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_21(ProgCount,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_22(ProgCount,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_23(ProgCount,vss,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_24(ProgCount,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_25(ProgCount,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_26(ProgCount,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_27(ProgCount,vss,w4); // 0.3u 0.07u
VLG and #(4) and3_28(w21,w18,w19,Instr2);
VLG nmos #(7) nmos_29(ProgCount,vdd,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_30(AddSub,vdd,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_31(AddSub,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_32(AddSub,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_33(AddSub,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_34(AddSub,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_35(AddSub,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_36(LoadB,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_37(LoadB,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_38(LoadB,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_39(LoadB,vss,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_40(LoadB,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_41(LoadB,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_42(LoadB,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_43(LoadB,vdd,w9); // 0.3u 0.07u
VLG and #(4) and3_44(w28,Instr0,w19,w27);
VLG and #(4) and3_45(w29,w18,w19,w27);
VLG nmos #(7) nmos_46(LoadB,vdd,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_47(LoadB,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_48(LoadB,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_49(LoadB,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_50(LoadB,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_51(LoadB,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_52(ReadMem,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_53(ReadMem,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_54(ReadMem,vdd,w5); // 0.3u 0.07u
VLG and #(4) and3_55(w32,w18,Instr1,w27);
VLG and #(4) and3_56(w33,Instr0,Instr1,w27);
VLG nmos #(7) nmos_57(ReadMem,vdd,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_58(ReadMem,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_59(ReadMem,vss,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_60(ReadMem,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_61(ReadMem,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_62(ReadMem,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_63(ReadMem,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_64(ReadMem,vss,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_65(ReadMem,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_66(ReadMem,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_67(ReadMem,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_68(AddSub,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_69(AddSub,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_70(AddSub,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_71(AddSub,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_72(AddSub,vdd,w13); // 0.3u 0.07u
VLG and #(7) and2_73(w4,w29,Phase3);
VLG nmos #(7) nmos_74(AddSub,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_75(AddSub,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_76(AddSub,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_77(LoadOut,vdd,w16); // 0.3u 0.07u
VLG and #(7) and2_78(w5,w29,Phase2);
VLG nmos #(7) nmos_79(LoadOut,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_80(LoadOut,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_81(LoadOut,vss,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_82(LoadOut,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_83(LoadOut,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_84(LoadOut,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_85(LoadOut,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_86(EnableAlu,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_87(EnableAlu,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_88(EnableAlu,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_89(LoadOut,vss,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_90(LoadOut,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_91(EnableAlu,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_92(EnableAlu,vdd,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_93(EnableAlu,vss,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_94(LoadOut,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_95(EnableAlu,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_96(EnableAlu,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_97(LoadOut,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_98(EnableAlu,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_99(EnableAlu,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_100(LoadOut,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_101(EnableAlu,vdd,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_102(EnableAlu,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_103(EnableAlu,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_104(LoadOut,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_105(EnableAlu,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_106(LoadInst,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_107(LoadA,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_108(LoadInst,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_109(LoadInst,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_110(LoadInst,vss,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_111(LoadA,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_112(LoadInst,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_113(LoadInst,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_114(LoadA,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_115(LoadInst,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_116(LoadInst,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_117(LoadA,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_118(LoadInst,vss,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_119(LoadInst,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_120(LoadInst,vdd,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_121(LoadA,vdd,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_122(LoadA,vss,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_123(LoadInst,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_124(LoadInst,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_125(LoadInst,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_126(LoadA,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_127(LoadA,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_128(LoadA,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_129(LoadA,vdd,w12); // 0.3u 0.07u
VLG not #(3) inv_130(w27,Instr2);
VLG nmos #(7) nmos_131(LoadA,vdd,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_132(LoadA,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_133(LoadA,vdd,w15); // 0.3u 0.07u
VLG not #(2) inv_134(w18,Instr0);
VLG nmos #(7) nmos_135(LoadA,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_136(EnableInstr,vss,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_137(EnableInstr,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_138(EnableInstr,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_139(EnableInstr,vss,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_140(EnableInstr,vdd,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_141(EnableInstr,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_142(EnableInstr,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_143(EnableInstr,vdd,w9); // 0.3u 0.07u
VLG and #(4) and3_144(w40,Instr0,w19,Instr2);
VLG nmos #(7) nmos_145(EnableInstr,vdd,Phase1); // 0.3u 0.07u
VLG not #(3) inv_146(w19,Instr1);
VLG nmos #(7) nmos_147(EnableInstr,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_148(EnableInstr,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_149(EnableInstr,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_150(EnableInstr,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_151(EnableInstr,vdd,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_152(EnableA,vdd,w16); // 0.3u 0.07u
VLG nmos #(7) nmos_153(EnableA,vss,w15); // 0.3u 0.07u
VLG nmos #(7) nmos_154(EnableA,vss,w14); // 0.3u 0.07u
VLG nmos #(7) nmos_155(EnableA,vss,w13); // 0.3u 0.07u
VLG nmos #(7) nmos_156(EnableA,vss,w12); // 0.3u 0.07u
VLG nmos #(7) nmos_157(EnableA,vss,w11); // 0.3u 0.07u
VLG nmos #(7) nmos_158(EnableA,vss,w10); // 0.3u 0.07u
VLG nmos #(7) nmos_159(EnableA,vss,w9); // 0.3u 0.07u
VLG nmos #(7) nmos_160(EnableA,vss,w8); // 0.3u 0.07u
VLG nmos #(7) nmos_161(EnableA,vss,w7); // 0.3u 0.07u
VLG nmos #(7) nmos_162(EnableA,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_163(EnableA,vss,w5); // 0.3u 0.07u
VLG nmos #(7) nmos_164(EnableA,vss,w4); // 0.3u 0.07u
VLG nmos #(7) nmos_165(EnableA,vss,Phase1); // 0.3u 0.07u
VLG and #(7) and2_166(w15,w21,Phase2);
VLG and #(7) and2_167(w14,w33,Phase3);
VLG and #(7) and2_168(w13,w32,Phase3);
VLG and #(7) and2_169(w11,w40,Phase3);
VLG and #(7) and2_170(w12,w40,Phase2);
VLG and #(7) and2_171(w10,w21,Phase3);
VLG and #(7) and2_172(w16,w33,Phase2);
VLG and #(7) and2_173(w9,w28,Phase2);
VLG and #(7) and2_174(w7,w28,Phase3);
VLG and #(7) and2_175(w8,w32,Phase2);
VLG endmodule
FSYM
SYM  #Counter16
BB(-5,170,35,220)
TITLE 5 163  #Counter16
MODEL 6000
PROP                                                                                                                                    
REC(0,175,30,40,r)
VIS 5
PIN(-5,190,0.000,0.000)EnableCount
PIN(-5,180,0.000,0.000)MainClock
PIN(-5,200,0.000,0.000)ClearCounter
PIN(35,180,0.010,0.002)PC[3]
PIN(35,190,0.010,0.006)PC[2]
PIN(35,200,0.010,0.006)PC[1]
PIN(35,210,0.010,0.006)PC[0]
LIG(-5,190,0,190)
LIG(-5,180,0,180)
LIG(-5,200,0,200)
LIG(30,180,35,180)
LIG(30,190,35,190)
LIG(30,200,35,200)
LIG(30,210,35,210)
LIG(0,175,0,215)
LIG(0,175,30,175)
LIG(30,175,30,215)
LIG(30,215,0,215)
VLG module Counter16( EnableCount,MainClock,ClearCounter,PC[3],PC[2],PC[1],PC[0]);
VLG input EnableCount,MainClock,ClearCounter;
VLG output PC[3],PC[2],PC[1],PC[0];
VLG wire w3,w6,w7,w10,w11,w14;
VLG not #(3) inv_1(w3,ClearCounter);
VLG and #(3) and2_2(w6,EnableCount,MainClock);
VLG dreg #(4) dreg_3(PC[1],w7,w7,w3,PC[0]);
VLG dreg #(4) dreg_4(PC[0],w10,w10,w3,w6);
VLG dreg #(4) dreg_5(PC[3],w11,w11,w3,PC[2]);
VLG dreg #(4) dreg_6(PC[2],w14,w14,w3,PC[1]);
VLG endmodule
FSYM
SYM  #Arrow
BB(-30,187,-20,193)
TITLE -30 185  #ProgCount
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-30,190,0.000,0.000)in
LIG(-30,190,-20,190)
LIG(-22,188,-20,190)
LIG(-22,192,-20,190)
FSYM
SYM  #Arrow
BB(-30,177,-20,183)
TITLE -30 175  #Clk
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-30,180,0.000,0.000)in
LIG(-30,180,-20,180)
LIG(-22,178,-20,180)
LIG(-22,182,-20,180)
FSYM
SYM  #Arrow
BB(-30,197,-20,203)
TITLE -30 195  #Rst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-30,200,0.000,0.000)in
LIG(-30,200,-20,200)
LIG(-22,198,-20,200)
LIG(-22,202,-20,200)
FSYM
SYM  #Arrow
BB(135,22,145,28)
TITLE 135 20  #ReadMem
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,25,0.000,0.000)in
LIG(135,25,145,25)
LIG(143,23,145,25)
LIG(143,27,145,25)
FSYM
SYM  #vss
BB(60,172,70,180)
TITLE 64 177  #vss
MODEL 0
PROP                                                                                                                                    
REC(60,170,0,0,b)
VIS 0
PIN(65,170,0.000,0.000)vss
LIG(65,170,65,175)
LIG(60,175,70,175)
LIG(60,178,62,175)
LIG(62,178,64,175)
LIG(64,178,66,175)
LIG(66,178,68,175)
FSYM
SYM  #mem8x8
BB(60,170,110,290)
TITLE 72 185  #Mem8x8
MODEL 865
PROP   01000000 00010010 00010001 00110000 00000000 00000000 00000000 00000000                                                                                                                          
REC(72,195,20,40,r)
VIS 3
PIN(60,190,0.000,0.000)Addr2
PIN(60,200,0.000,0.000)Addr1
PIN(60,210,0.000,0.000)Addr0
PIN(60,225,0.000,0.000)Din7
PIN(60,235,0.000,0.000)Din6
PIN(60,245,0.000,0.000)Din5
PIN(60,255,0.000,0.000)Din4
PIN(60,265,0.000,0.000)Din3
PIN(60,275,0.000,0.000)Din2
PIN(60,285,0.000,0.000)Din1
PIN(60,295,0.000,0.000)Din0
PIN(80,170,0.000,0.000)WriteMem
PIN(90,170,0.000,0.000)ReadMem
PIN(110,225,0.005,0.002)Dout7
PIN(110,235,0.005,0.002)Dout6
PIN(110,245,0.005,0.002)Dout5
PIN(110,255,0.005,0.002)Dout4
PIN(110,265,0.005,0.002)Dout3
PIN(110,275,0.005,0.002)Dout2
PIN(110,285,0.005,0.002)Dout1
PIN(110,295,0.005,0.002)Dout0
LIG(110,285,100,285)
LIG(100,275,100,285)
LIG(110,275,100,275)
LIG(100,265,100,275)
LIG(110,265,100,265)
LIG(100,285,100,295)
LIG(70,300,100,300)
LIG(70,295,70,300)
LIG(110,295,100,295)
LIG(60,295,70,295)
LIG(90,180,100,180)
LIG(90,170,90,180)
LIG(80,180,90,180)
LIG(80,170,80,180)
LIG(100,255,100,265)
LIG(110,255,100,255)
LIG(100,245,100,255)
LIG(100,245,110,245)
LIG(100,235,100,245)
LIG(110,235,100,235)
LIG(100,225,100,235)
LIG(100,225,110,225)
LIG(100,180,100,225)
LIG(70,180,80,180)
LIG(70,285,70,295)
LIG(60,285,70,285)
LIG(70,275,70,285)
LIG(60,275,70,275)
LIG(70,265,70,275)
LIG(60,265,70,265)
LIG(70,255,70,265)
LIG(60,255,70,255)
LIG(70,245,70,255)
LIG(60,245,70,245)
LIG(70,235,70,245)
LIG(60,235,70,235)
LIG(70,225,70,235)
LIG(70,210,70,225)
LIG(70,200,70,210)
LIG(70,190,70,200)
LIG(70,180,70,190)
LIG(60,225,70,225)
LIG(60,210,70,210)
LIG(60,200,70,200)
LIG(100,295,100,300)
LIG(60,190,70,190)
FSYM
SYM  #Arrow
BB(90,152,100,158)
TITLE 90 150  #ReadMem
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(90,155,0.000,0.000)in
LIG(90,155,100,155)
LIG(98,153,100,155)
LIG(98,157,100,155)
FSYM
SYM  #InstructionReg
BB(160,185,200,315)
TITLE 170 178  #InstructionReg
MODEL 6000
PROP                                                                                                                                    
REC(165,190,30,120,r)
VIS 5
PIN(160,245,0.000,0.000)Instr[0]
PIN(160,235,0.000,0.000)Instr[1]
PIN(160,225,0.000,0.000)Instr[2]
PIN(160,215,0.000,0.000)Instr[3]
PIN(160,295,0.000,0.000)Data[0]
PIN(160,285,0.000,0.000)Data[1]
PIN(160,275,0.000,0.000)Data[2]
PIN(160,265,0.000,0.000)Data[3]
PIN(160,255,0.000,0.000)EnableInstrReg
PIN(160,305,0.000,0.000)ClearInstrReg
PIN(160,205,0.000,0.000)LatchInstrReg
PIN(160,195,0.000,0.000)MainClock
PIN(200,265,0.010,0.016)IB0
PIN(200,235,0.010,0.016)IB3
PIN(200,245,0.010,0.016)IB2
PIN(200,255,0.010,0.016)IB1
PIN(200,225,0.010,0.010)ToInstr0
PIN(200,215,0.010,0.008)ToInstr1
PIN(200,205,0.010,0.008)ToInstr2
PIN(200,195,0.010,0.002)ToInstr3
LIG(160,245,165,245)
LIG(160,235,165,235)
LIG(160,225,165,225)
LIG(160,215,165,215)
LIG(160,295,165,295)
LIG(160,285,165,285)
LIG(160,275,165,275)
LIG(160,265,165,265)
LIG(160,255,165,255)
LIG(160,305,165,305)
LIG(160,205,165,205)
LIG(160,195,165,195)
LIG(195,265,200,265)
LIG(195,235,200,235)
LIG(195,245,200,245)
LIG(195,255,200,255)
LIG(195,225,200,225)
LIG(195,215,200,215)
LIG(195,205,200,205)
LIG(195,195,200,195)
LIG(165,190,165,310)
LIG(165,190,195,190)
LIG(195,190,195,310)
LIG(195,310,165,310)
VLG module InstructionReg( Instr[0],Instr[1],Instr[2],Instr[3],Data[0],Data[1],Data[2],Data[3],
VLG EnableInstrReg,ClearInstrReg,LatchInstrReg,MainClock,IB0,IB3,IB2,IB1,
VLG ToInstr0,ToInstr1,ToInstr2,ToInstr3);
VLG input Instr[0],Instr[1],Instr[2],Instr[3],Data[0],Data[1],Data[2],Data[3];
VLG input EnableInstrReg,ClearInstrReg,LatchInstrReg,MainClock;
VLG output IB0,IB3,IB2,IB1,ToInstr0,ToInstr1,ToInstr2,ToInstr3;
VLG wire w3,w4,w5,w6,w8,w9,w11,w12;
VLG wire w14,w15,w18,w21,w24,w27,;
VLG dreg #(4) dreg_1(w5,w6,Data[0],w3,w4);
VLG dreg #(4) dreg_2(w8,w9,Data[1],w3,w4);
VLG dreg #(4) dreg_3(w11,w12,Data[3],w3,w4);
VLG dreg #(4) dreg_4(w14,w15,Data[2],w3,w4);
VLG dreg #(4) dreg_5(ToInstr2,w18,Instr[2],w3,w4);
VLG dreg #(4) dreg_6(ToInstr3,w21,Instr[3],w3,w4);
VLG dreg #(4) dreg_7(ToInstr1,w24,Instr[1],w3,w4);
VLG dreg #(4) dreg_8(ToInstr0,w27,Instr[0],w3,w4);
VLG notif1 #(1) notif1_9(IB1,w9,EnableInstrReg);
VLG notif1 #(1) notif1_10(IB2,w15,EnableInstrReg);
VLG notif1 #(1) notif1_11(IB0,w6,EnableInstrReg);
VLG notif1 #(1) notif1_12(IB3,w12,EnableInstrReg);
VLG not #(4) inv_13(w3,ClearInstrReg);
VLG and #(6) and2_14(w4,MainClock,LatchInstrReg);
VLG endmodule
FSYM
SYM  #Arrow
BB(135,82,145,88)
TITLE 135 80  #EnableInstr
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,85,0.000,0.000)in
LIG(135,85,145,85)
LIG(143,83,145,85)
LIG(143,87,145,85)
FSYM
SYM  #Arrow
BB(140,252,150,258)
TITLE 140 250  #EnableInstr
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(140,255,0.000,0.000)in
LIG(140,255,150,255)
LIG(148,253,150,255)
LIG(148,257,150,255)
FSYM
SYM  #Arrow
BB(135,72,145,78)
TITLE 135 70  #LoadA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,75,0.000,0.000)in
LIG(135,75,145,75)
LIG(143,73,145,75)
LIG(143,77,145,75)
FSYM
SYM  #Arrow
BB(140,202,150,208)
TITLE 140 200  #LoadInst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(140,205,0.000,0.000)in
LIG(140,205,150,205)
LIG(148,203,150,205)
LIG(148,207,150,205)
FSYM
SYM  #Arrow
BB(135,52,145,58)
TITLE 135 50  #LoadInst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,55,0.000,0.000)in
LIG(135,55,145,55)
LIG(143,53,145,55)
LIG(143,57,145,55)
FSYM
SYM  #Arrow
BB(140,192,150,198)
TITLE 140 190  #Clk
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(140,195,0.000,0.000)in
LIG(140,195,150,195)
LIG(148,193,150,195)
LIG(148,197,150,195)
FSYM
SYM  #Arrow
BB(140,302,150,308)
TITLE 140 300  #Rst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(140,305,0.000,0.000)in
LIG(140,305,150,305)
LIG(148,303,150,305)
LIG(148,307,150,305)
FSYM
SYM  #Arrow
BB(135,122,145,128)
TITLE 135 120  #AddSub
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,125,0.000,0.000)in
LIG(135,125,145,125)
LIG(143,123,145,125)
LIG(143,127,145,125)
FSYM
SYM  #Arrow
BB(135,112,145,118)
TITLE 135 110  #EnableA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,115,0.000,0.000)in
LIG(135,115,145,115)
LIG(143,113,145,115)
LIG(143,117,145,115)
FSYM
SYM  #Arrow
BB(135,102,145,108)
TITLE 135 100  #EnableAlu
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,105,0.000,0.000)in
LIG(135,105,145,105)
LIG(143,103,145,105)
LIG(143,107,145,105)
FSYM
SYM  #Arrow
BB(135,92,145,98)
TITLE 135 90  #EnableIn
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,95,0.000,0.000)in
LIG(135,95,145,95)
LIG(143,93,145,95)
LIG(143,97,145,95)
FSYM
SYM  #Arrow
BB(135,62,145,68)
TITLE 135 60  #LoadB
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,65,0.000,0.000)in
LIG(135,65,145,65)
LIG(143,63,145,65)
LIG(143,67,145,65)
FSYM
SYM  #Arrow
BB(135,42,145,48)
TITLE 135 40  #LoadOut
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(135,45,0.000,0.000)in
LIG(135,45,145,45)
LIG(143,43,145,45)
LIG(143,47,145,45)
FSYM
SYM  #InRegister
BB(410,260,450,320)
TITLE 420 253  #InRegister
MODEL 6000
PROP                                                                                                                                    
REC(415,265,30,50,r)
VIS 5
PIN(410,310,0.000,0.000)DataIn[0]
PIN(410,300,0.000,0.000)DataIn[1]
PIN(410,290,0.000,0.000)DataIn[2]
PIN(410,280,0.000,0.000)DataIn[3]
PIN(410,270,0.000,0.000)EnableIn
PIN(450,280,0.010,0.016)IB2
PIN(450,270,0.010,0.016)IB3
PIN(450,290,0.010,0.016)IB1
PIN(450,300,0.010,0.016)IB0
LIG(410,310,415,310)
LIG(410,300,415,300)
LIG(410,290,415,290)
LIG(410,280,415,280)
LIG(410,270,415,270)
LIG(445,280,450,280)
LIG(445,270,450,270)
LIG(445,290,450,290)
LIG(445,300,450,300)
LIG(415,265,415,315)
LIG(415,265,445,265)
LIG(445,265,445,315)
LIG(445,315,415,315)
VLG module InRegister( DataIn[0],DataIn[1],DataIn[2],DataIn[3],EnableIn,IB2,IB3,IB1,
VLG IB0);
VLG input DataIn[0],DataIn[1],DataIn[2],DataIn[3],EnableIn;
VLG output IB2,IB3,IB1,IB0;
VLG wire ;
VLG bufif1 #(1) bufif1_1(IB2,DataIn[2],EnableIn);
VLG bufif1 #(1) bufif1_2(IB3,DataIn[3],EnableIn);
VLG bufif1 #(1) bufif1_3(IB1,DataIn[1],EnableIn);
VLG bufif1 #(1) bufif1_4(IB0,DataIn[0],EnableIn);
VLG endmodule
FSYM
SYM  #Arrow
BB(385,267,395,273)
TITLE 385 265  #EnableIn
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(385,270,0.000,0.000)in
LIG(385,270,395,270)
LIG(393,268,395,270)
LIG(393,272,395,270)
FSYM
SYM  #kbd
BB(335,275,385,315)
TITLE 335 317  #DataIn
MODEL 85
PROP                                                                                                                                    
REC(335,275,40,40,r)
VIS 4
PIN(385,310,0.000,0.000)DataIn[0]
PIN(385,300,0.000,0.000)DataIn[1]
PIN(385,290,0.000,0.000)DataIn[2]
PIN(385,280,0.000,0.000)DataIn[3]
LIG(375,275,375,315)
LIG(335,275,375,275)
LIG(335,275,335,315)
LIG(369,280,369,283)
LIG(335,295,375,295)
LIG(355,275,355,315)
LIG(345,315,345,275)
LIG(335,285,375,285)
LIG(365,275,365,315)
LIG(335,305,375,305)
LIG(375,310,385,310)
LIG(385,300,375,300)
LIG(375,290,385,290)
LIG(385,280,375,280)
LIG(339,313,339,307)
LIG(339,307,341,307)
LIG(341,307,341,313)
LIG(341,313,339,313)
LIG(351,313,351,307)
LIG(359,307,361,307)
LIG(361,307,361,309)
LIG(361,309,359,309)
LIG(359,309,359,313)
LIG(359,313,361,313)
LIG(369,313,371,313)
LIG(371,307,369,307)
LIG(371,307,371,313)
LIG(369,309,371,309)
LIG(339,297,339,301)
LIG(339,301,341,301)
LIG(341,297,341,303)
LIG(351,297,349,297)
LIG(349,297,349,299)
LIG(349,299,351,299)
LIG(351,299,351,303)
LIG(351,303,349,303)
LIG(359,297,359,303)
LIG(359,303,361,303)
LIG(361,303,361,299)
LIG(361,299,359,299)
LIG(369,297,371,297)
LIG(371,297,371,303)
LIG(339,287,339,293)
LIG(339,287,341,287)
LIG(341,287,341,293)
LIG(341,293,339,293)
LIG(339,289,341,289)
LIG(369,280,371,280)
LIG(335,315,375,315)
LIG(349,287,351,287)
LIG(369,277,369,280)
LIG(358,283,358,280)
LIG(358,277,361,277)
LIG(349,277,349,283)
LIG(338,283,338,277)
LIG(338,277,341,277)
LIG(368,287,371,287)
LIG(371,287,372,288)
LIG(372,288,371,289)
LIG(368,289,371,289)
LIG(368,293,368,289)
LIG(349,289,351,289)
LIG(338,283,341,283)
LIG(349,287,349,289)
LIG(351,289,351,293)
LIG(351,287,351,289)
LIG(351,293,349,293)
LIG(358,283,361,283)
LIG(358,293,360,287)
LIG(360,287,362,293)
LIG(368,289,368,287)
LIG(371,289,372,290)
LIG(369,277,372,277)
LIG(372,290,372,292)
LIG(358,291,362,291)
LIG(352,282,351,283)
LIG(372,292,371,293)
LIG(358,280,358,277)
LIG(358,280,360,280)
LIG(352,278,352,282)
LIG(351,277,352,278)
LIG(348,283,349,283)
LIG(348,277,349,277)
LIG(368,293,371,293)
LIG(349,277,351,277)
LIG(349,283,351,283)
FSYM
SYM  #digit
BB(510,-40,535,-5)
TITLE 510 -8  #IB
MODEL 89
PROP                                                                                                                                    
REC(515,-35,15,21,r)
VIS 4
PIN(515,-5,0.000,0.000)IB[3]
PIN(520,-5,0.000,0.000)IB[2]
PIN(525,-5,0.000,0.000)IB[1]
PIN(530,-5,0.000,0.000)IB[0]
LIG(510,-40,510,-10)
LIG(535,-40,510,-40)
LIG(535,-10,535,-40)
LIG(510,-10,535,-10)
LIG(515,-10,515,-5)
LIG(520,-10,520,-5)
LIG(525,-10,525,-5)
LIG(530,-10,530,-5)
FSYM
SYM  #OutRegister
BB(650,65,690,145)
TITLE 660 58  #OutRegister
MODEL 6000
PROP                                                                                                                                    
REC(655,70,30,70,r)
VIS 5
PIN(650,135,0.000,0.000)IB[0]
PIN(650,125,0.000,0.000)IB[1]
PIN(650,115,0.000,0.000)IB[2]
PIN(650,105,0.000,0.000)IB[3]
PIN(650,85,0.000,0.000)MainClock
PIN(650,95,0.000,0.000)LoadOut
PIN(650,75,0.000,0.000)MainReset
PIN(690,105,0.010,0.004)Out0
PIN(690,75,0.010,0.004)Out3
PIN(690,85,0.010,0.004)Out2
PIN(690,95,0.010,0.004)Out1
LIG(650,135,655,135)
LIG(650,125,655,125)
LIG(650,115,655,115)
LIG(650,105,655,105)
LIG(650,85,655,85)
LIG(650,95,655,95)
LIG(650,75,655,75)
LIG(685,105,690,105)
LIG(685,75,690,75)
LIG(685,85,690,85)
LIG(685,95,690,95)
LIG(655,70,655,140)
LIG(655,70,685,70)
LIG(685,70,685,140)
LIG(685,140,655,140)
VLG module OutRegister( IB[0],IB[1],IB[2],IB[3],MainClock,LoadOut,MainReset,Out0,
VLG Out3,Out2,Out1);
VLG input IB[0],IB[1],IB[2],IB[3],MainClock,LoadOut,MainReset;
VLG output Out0,Out3,Out2,Out1;
VLG wire w4,w6,w12,w14,w16,w18;
VLG nand #(4) nand2_1(w4,MainClock,LoadOut);
VLG not #(3) inv_2(w6,MainReset);
VLG dreg #(4) dreg_3(Out1,w12,IB[1],w6,w4);
VLG dreg #(4) dreg_4(Out0,w14,IB[0],w6,w4);
VLG dreg #(4) dreg_5(Out3,w16,IB[3],w6,w4);
VLG dreg #(4) dreg_6(Out2,w18,IB[2],w6,w4);
VLG endmodule
FSYM
SYM  #Arrow
BB(625,72,635,78)
TITLE 625 70  #Rst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(625,75,0.000,0.000)in
LIG(625,75,635,75)
LIG(633,73,635,75)
LIG(633,77,635,75)
FSYM
SYM  #Arrow
BB(625,82,635,88)
TITLE 625 80  #Clk
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(625,85,0.000,0.000)in
LIG(625,85,635,85)
LIG(633,83,635,85)
LIG(633,87,635,85)
FSYM
SYM  #Arrow
BB(625,92,635,98)
TITLE 625 90  #LoadOut
MODEL 935
PROP                                                                                                                                    
REC(5,0,0,0, )
VIS 4
PIN(625,95,0.000,0.000)in
LIG(625,95,635,95)
LIG(633,93,635,95)
LIG(633,97,635,95)
FSYM
SYM  #digit
BB(710,30,735,65)
TITLE 710 62  #DataOut
MODEL 89
PROP                                                                                                                                    
REC(715,35,15,21,r)
VIS 4
PIN(715,65,0.000,0.000)DataOut[3]
PIN(720,65,0.000,0.000)DataOut[2]
PIN(725,65,0.000,0.000)DataOut[1]
PIN(730,65,0.000,0.000)DataOut[0]
LIG(710,30,710,60)
LIG(735,30,710,30)
LIG(735,60,735,30)
LIG(710,60,735,60)
LIG(715,60,715,65)
LIG(720,60,720,65)
LIG(725,60,725,65)
LIG(730,60,730,65)
FSYM
SYM  #Arrow
BB(250,172,260,178)
TITLE 250 170  #Rst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(250,175,0.000,0.000)in
LIG(250,175,260,175)
LIG(258,173,260,175)
LIG(258,177,260,175)
FSYM
SYM  #Arrow
BB(250,162,260,168)
TITLE 250 160  #EnableA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(250,165,0.000,0.000)in
LIG(250,165,260,165)
LIG(258,163,260,165)
LIG(258,167,260,165)
FSYM
SYM  #Arrow
BB(250,152,260,158)
TITLE 250 150  #LoadA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(250,155,0.000,0.000)in
LIG(250,155,260,155)
LIG(258,153,260,155)
LIG(258,157,260,155)
FSYM
SYM  #Arrow
BB(250,142,260,148)
TITLE 250 140  #Clk
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(250,145,0.000,0.000)in
LIG(250,145,260,145)
LIG(258,143,260,145)
LIG(258,147,260,145)
FSYM
SYM  #AccumulatorA
BB(270,135,310,225)
TITLE 280 128  #AccumulatorA
MODEL 6000
PROP                                                                                                                                    
REC(275,140,30,80,r)
VIS 5
PIN(270,145,0.000,0.000)MainClock
PIN(270,155,0.000,0.000)LatchA
PIN(270,175,0.000,0.000)ClearA
PIN(270,215,0.000,0.000)A[0]
PIN(270,205,0.000,0.000)A[1]
PIN(270,195,0.000,0.000)A[2]
PIN(270,185,0.000,0.000)A[3]
PIN(270,165,0.000,0.000)EnableA
PIN(310,145,0.010,0.016)B3
PIN(310,215,0.010,0.006)AluA0
PIN(310,205,0.010,0.006)AluA1
PIN(310,195,0.010,0.006)AluA2
PIN(310,185,0.010,0.006)AluA3
PIN(310,175,0.010,0.016)B0
PIN(310,165,0.010,0.016)B1
PIN(310,155,0.010,0.016)B2
LIG(270,145,275,145)
LIG(270,155,275,155)
LIG(270,175,275,175)
LIG(270,215,275,215)
LIG(270,205,275,205)
LIG(270,195,275,195)
LIG(270,185,275,185)
LIG(270,165,275,165)
LIG(305,145,310,145)
LIG(305,215,310,215)
LIG(305,205,310,205)
LIG(305,195,310,195)
LIG(305,185,310,185)
LIG(305,175,310,175)
LIG(305,165,310,165)
LIG(305,155,310,155)
LIG(275,140,275,220)
LIG(275,140,305,140)
LIG(305,140,305,220)
LIG(305,220,275,220)
VLG module AccumulatorA( MainClock,LatchA,ClearA,A[0],A[1],A[2],A[3],EnableA,
VLG B3,AluA0,AluA1,AluA2,AluA3,B0,B1,B2);
VLG input MainClock,LatchA,ClearA,A[0],A[1],A[2],A[3],EnableA;
VLG output B3,AluA0,AluA1,AluA2,AluA3,B0,B1,B2;
VLG wire w4,w7,w9,w12,w13,w17,;
VLG notif1 #(1) notif1_1(B0,w4,EnableA);
VLG notif1 #(1) notif1_2(B3,w7,EnableA);
VLG notif1 #(1) notif1_3(B2,w9,EnableA);
VLG dreg #(4) dreg_4(AluA0,w4,A[0],w12,w13);
VLG dreg #(4) dreg_5(AluA1,w17,A[1],w12,w13);
VLG dreg #(4) dreg_6(AluA2,w9,A[2],w12,w13);
VLG dreg #(4) dreg_7(AluA3,w7,A[3],w12,w13);
VLG and #(5) and2_8(w13,MainClock,LatchA);
VLG not #(3) inv_9(w12,ClearA);
VLG notif1 #(1) notif1_10(B1,w17,EnableA);
VLG endmodule
FSYM
SYM  #AccumulatorB
BB(270,0,310,80)
TITLE 280 -7  #AccumulatorB
MODEL 6000
PROP   
REC(275,5,30,70,r)                                                                                                                                
REC(0,0,0,0, )
VIS 5
PIN(270,20,0.000,0.000)LatchB
PIN(270,10,0.000,0.000)MainClock
PIN(270,30,0.000,0.000)ClearB
PIN(270,70,0.000,0.000)B[0]
PIN(270,60,0.000,0.000)B[1]
PIN(270,50,0.000,0.000)B[2]
PIN(270,40,0.000,0.000)B[3]
PIN(310,40,0.010,0.008)AluB0
PIN(310,30,0.010,0.008)AluB1
PIN(310,20,0.010,0.008)AluB2
PIN(310,10,0.010,0.008)AluB3
LIG(270,20,275,20)
LIG(270,10,275,10)
LIG(270,30,275,30)
LIG(270,70,275,70)
LIG(270,60,275,60)
LIG(270,50,275,50)
LIG(270,40,275,40)
LIG(305,40,310,40)
LIG(305,30,310,30)
LIG(305,20,310,20)
LIG(305,10,310,10)
LIG(275,5,275,75)
LIG(275,5,305,5)
LIG(305,5,305,75)
LIG(305,75,275,75)
VLG module AccumulatorB( LatchB,MainClock,ClearB,B[0],B[1],B[2],B[3],AluB0,
VLG AluB1,AluB2,AluB3);
VLG input LatchB,MainClock,ClearB,B[0],B[1],B[2],B[3];
VLG output AluB0,AluB1,AluB2,AluB3;
VLG wire w3,w6,w9,w12,w15,w18;
VLG not #(3) inv_1(w3,ClearB);
VLG and #(5) and2_2(w6,MainClock,LatchB);
VLG dreg #(4) dreg_3(AluB0,w9,B[0],w3,w6);
VLG dreg #(4) dreg_4(AluB1,w12,B[1],w3,w6);
VLG dreg #(4) dreg_5(AluB2,w15,B[2],w3,w6);
VLG dreg #(4) dreg_6(AluB3,w18,B[3],w3,w6);
VLG endmodule
FSYM
SYM  #Arrow
BB(250,27,260,33)
TITLE 250 25  #Rst
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(250,30,0.000,0.000)in
LIG(250,30,260,30)
LIG(258,28,260,30)
LIG(258,32,260,30)
FSYM
SYM  #Arrow
BB(250,17,260,23)
TITLE 250 15  #LoadB
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(250,20,0.000,0.000)in
LIG(250,20,260,20)
LIG(258,18,260,20)
LIG(258,22,260,20)
FSYM
SYM  #Arrow
BB(250,7,260,13)
TITLE 250 5  #Clk
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(250,10,0.000,0.000)in
LIG(250,10,260,10)
LIG(258,8,260,10)
LIG(258,12,260,10)
FSYM
SYM  #ArithmeticUnit
BB(400,-10,440,100)
TITLE 410 -17  #ArithmeticUnit
MODEL 6000
PROP                                                                                                                                    
REC(405,-5,30,100,r)
VIS 5
PIN(400,80,0.000,0.000)A[0]
PIN(400,70,0.000,0.000)A[1]
PIN(400,60,0.000,0.000)A[2]
PIN(400,50,0.000,0.000)A[3]
PIN(400,90,0.000,0.000)AddSub
PIN(400,40,0.000,0.000)B[0]
PIN(400,30,0.000,0.000)B[1]
PIN(400,20,0.000,0.000)B[2]
PIN(400,10,0.000,0.000)B[3]
PIN(400,0,0.000,0.000)EnableAlu
PIN(440,0,0.010,0.016)IB_Alu[3]
PIN(440,10,0.010,0.016)IB_Alu[2]
PIN(440,20,0.010,0.016)IB_Alu[1]
PIN(440,30,0.010,0.016)IB_Alu[0]
PIN(440,40,0.010,0.002)Carry
LIG(400,80,405,80)
LIG(400,70,405,70)
LIG(400,60,405,60)
LIG(400,50,405,50)
LIG(400,90,405,90)
LIG(400,40,405,40)
LIG(400,30,405,30)
LIG(400,20,405,20)
LIG(400,10,405,10)
LIG(400,0,405,0)
LIG(435,0,440,0)
LIG(435,10,440,10)
LIG(435,20,440,20)
LIG(435,30,440,30)
LIG(435,40,440,40)
LIG(405,-5,405,95)
LIG(405,-5,435,-5)
LIG(435,-5,435,95)
LIG(435,95,405,95)
VLG module ArithmeticUnit( A[0],A[1],A[2],A[3],AddSub,B[0],B[1],B[2],
VLG B[3],EnableAlu,IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0],Carry);
VLG input A[0],A[1],A[2],A[3],AddSub,B[0],B[1],B[2];
VLG input B[3],EnableAlu;
VLG output IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0],Carry;
VLG wire w6,w8,w9,w10,w11,w12,w13,w14;
VLG wire w15,w25,w26,w27,w28,w29,w30,w32;
VLG wire w33,w34,w35,w36,w37,w38,w39,w40;
VLG wire w41,w42,w43,w44,w45,w46,w47,w48;
VLG mux #(2) mux_1(w8,A[3],w6,AddSub);
VLG not #(1) inv_2(w6,A[3]);
VLG not #(1) inv_3(w9,A[2]);
VLG mux #(2) mux_4(w10,A[2],w9,AddSub);
VLG mux #(2) mux_5(w12,A[0],w11,AddSub);
VLG not #(1) inv_6(w11,A[0]);
VLG not #(1) inv_7(w13,A[1]);
VLG mux #(2) mux_8(w14,A[1],w13,AddSub);
VLG mux #(2) mux_9(w15,vss,vdd,AddSub);
VLG bufif1 #(1) bufif1_10(IB_Alu[3],w30,EnableAlu);
VLG bufif1 #(1) bufif1_11(IB_Alu[2],w32,EnableAlu);
VLG bufif1 #(1) bufif1_12(IB_Alu[1],w26,EnableAlu);
VLG bufif1 #(1) bufif1_13(IB_Alu[0],w28,EnableAlu);
VLG xor #(2) xor2_1_14(w33,B[1],w14);
VLG xor #(2) xor2_2_15(w26,w33,w25);
VLG or #(2) or2_3_16(w34,B[1],w14);
VLG and #(2) and2_4_17(w35,w14,B[1]);
VLG or #(2) or2_5_18(w27,w35,w36);
VLG and #(2) and2_6_19(w36,w25,w34);
VLG xor #(2) xor2_1_20(w37,B[0],w12);
VLG xor #(2) xor2_2_21(w28,w37,w15);
VLG or #(2) or2_3_22(w38,B[0],w12);
VLG and #(2) and2_4_23(w39,w12,B[0]);
VLG or #(2) or2_5_24(w25,w39,w40);
VLG and #(2) and2_6_25(w40,w15,w38);
VLG xor #(2) xor2_1_26(w41,B[3],w8);
VLG xor #(2) xor2_2_27(w30,w41,w29);
VLG or #(2) or2_3_28(w42,B[3],w8);
VLG and #(2) and2_4_29(w43,w8,B[3]);
VLG or #(2) or2_5_30(Carry,w43,w44);
VLG and #(2) and2_6_31(w44,w29,w42);
VLG xor #(2) xor2_1_32(w45,B[2],w10);
VLG xor #(2) xor2_2_33(w32,w45,w27);
VLG or #(2) or2_3_34(w46,B[2],w10);
VLG and #(2) and2_4_35(w47,w10,B[2]);
VLG or #(2) or2_5_36(w29,w47,w48);
VLG and #(2) and2_6_37(w48,w27,w46);
VLG endmodule
FSYM
SYM  #Arrow
BB(350,87,360,93)
TITLE 350 85  #AddSub
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(350,90,0.000,0.000)in
LIG(350,90,360,90)
LIG(358,88,360,90)
LIG(358,92,360,90)
FSYM
SYM  #Arrow
BB(375,-3,385,3)
TITLE 375 -5  #EnableAlu
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(375,0,0.000,0.000)in
LIG(375,0,385,0)
LIG(383,-2,385,0)
LIG(383,2,385,0)
FSYM
CNC(530 135)
CNC(525 125)
CNC(520 115)
CNC(515 105)
CNC(515 145)
CNC(520 155)
CNC(525 165)
CNC(530 175)
CNC(365 175)
CNC(360 165)
CNC(350 155)
CNC(345 145)
CNC(265 265)
CNC(260 255)
CNC(255 245)
CNC(250 235)
CNC(365 175)
CNC(360 165)
CNC(350 155)
CNC(345 145)
CNC(530 30)
CNC(525 20)
CNC(520 10)
CNC(515 0)
LIG(0,-10,5,-10)
LIG(0,0,5,0)
LIG(-25,25,-5,25)
LIG(-25,35,-5,35)
LIG(35,25,75,25)
LIG(35,35,75,35)
LIG(35,45,75,45)
LIG(35,55,75,55)
LIG(115,35,135,35)
LIG(-30,180,-5,180)
LIG(-30,190,-5,190)
LIG(-30,200,-5,200)
LIG(80,170,65,170)
LIG(115,25,135,25)
LIG(35,190,60,190)
LIG(35,200,60,200)
LIG(35,210,60,210)
LIG(115,85,135,85)
LIG(140,255,160,255)
LIG(115,75,135,75)
LIG(140,205,160,205)
LIG(115,55,135,55)
LIG(140,195,160,195)
LIG(140,305,160,305)
LIG(110,295,160,295)
LIG(110,285,160,285)
LIG(110,275,160,275)
LIG(110,265,160,265)
LIG(250,30,270,30)
LIG(110,255,135,255)
LIG(135,255,135,245)
LIG(135,245,160,245)
LIG(260,60,260,110)
LIG(110,215,160,215)
LIG(250,20,270,20)
LIG(365,105,365,175)
LIG(270,105,365,105)
LIG(270,70,270,105)
LIG(250,235,345,235)
LIG(75,95,75,135)
LIG(75,135,230,135)
LIG(230,135,230,225)
LIG(200,225,230,225)
LIG(75,85,70,85)
LIG(70,85,70,140)
LIG(70,140,225,140)
LIG(225,140,225,215)
LIG(200,215,225,215)
LIG(75,75,65,75)
LIG(65,75,65,145)
LIG(65,145,220,145)
LIG(220,145,220,205)
LIG(200,205,220,205)
LIG(75,65,60,65)
LIG(60,65,60,150)
LIG(60,150,215,150)
LIG(215,150,215,195)
LIG(200,195,215,195)
LIG(115,45,135,45)
LIG(115,65,135,65)
LIG(115,95,135,95)
LIG(115,105,135,105)
LIG(115,115,135,115)
LIG(115,125,135,125)
LIG(385,270,410,270)
LIG(385,280,410,280)
LIG(385,290,410,290)
LIG(385,300,410,300)
LIG(385,310,410,310)
LIG(515,-5,515,0)
LIG(450,270,515,270)
LIG(520,-5,520,10)
LIG(525,-5,525,20)
LIG(530,-5,530,30)
LIG(450,300,530,300)
LIG(450,280,520,280)
LIG(450,290,525,290)
LIG(270,60,260,60)
LIG(625,75,650,75)
LIG(250,185,250,235)
LIG(270,185,250,185)
LIG(255,245,350,245)
LIG(255,195,255,245)
LIG(730,65,730,105)
LIG(625,85,650,85)
LIG(690,105,730,105)
LIG(725,65,725,95)
LIG(690,95,725,95)
LIG(720,65,720,85)
LIG(690,85,720,85)
LIG(625,95,650,95)
LIG(715,65,715,75)
LIG(690,75,715,75)
LIG(515,105,515,145)
LIG(650,105,515,105)
LIG(520,115,520,155)
LIG(650,135,530,135)
LIG(650,115,520,115)
LIG(530,135,530,175)
LIG(525,125,525,165)
LIG(650,125,525,125)
LIG(250,145,270,145)
LIG(270,195,255,195)
LIG(260,255,360,255)
LIG(260,205,260,255)
LIG(270,205,260,205)
LIG(250,155,270,155)
LIG(265,265,365,265)
LIG(265,215,265,265)
LIG(270,215,265,215)
LIG(345,145,515,145)
LIG(345,235,345,145)
LIG(250,165,270,165)
LIG(200,235,250,235)
LIG(350,155,520,155)
LIG(350,245,350,155)
LIG(200,245,255,245)
LIG(360,165,525,165)
LIG(250,175,270,175)
LIG(360,255,360,165)
LIG(200,255,260,255)
LIG(365,175,530,175)
LIG(365,265,365,175)
LIG(200,265,265,265)
LIG(310,145,345,145)
LIG(530,175,530,300)
LIG(515,145,515,270)
LIG(310,175,365,175)
LIG(525,165,525,290)
LIG(310,165,360,165)
LIG(520,155,520,280)
LIG(310,155,350,155)
LIG(345,120,345,145)
LIG(245,120,345,120)
LIG(245,40,245,120)
LIG(270,40,245,40)
LIG(350,115,350,155)
LIG(250,10,270,10)
LIG(255,115,350,115)
LIG(255,50,255,115)
LIG(270,50,255,50)
LIG(360,110,360,165)
LIG(260,110,360,110)
LIG(110,245,130,245)
LIG(130,245,130,235)
LIG(130,235,160,235)
LIG(110,235,125,235)
LIG(125,235,125,225)
LIG(125,225,160,225)
LIG(110,225,110,215)
LIG(90,155,90,170)
LIG(310,10,400,10)
LIG(310,20,400,20)
LIG(310,30,400,30)
LIG(310,40,400,40)
LIG(310,215,390,215)
LIG(390,215,390,80)
LIG(390,80,400,80)
LIG(310,205,385,205)
LIG(385,205,385,70)
LIG(385,70,400,70)
LIG(310,195,380,195)
LIG(380,195,380,60)
LIG(380,60,400,60)
LIG(310,185,375,185)
LIG(375,185,375,50)
LIG(375,50,400,50)
LIG(375,0,400,0)
LIG(350,90,400,90)
LIG(440,30,530,30)
LIG(530,30,530,135)
LIG(440,20,525,20)
LIG(525,20,525,125)
LIG(520,10,520,115)
LIG(440,10,520,10)
LIG(440,0,515,0)
LIG(515,0,515,105)
FFIG C:\Users\Meep\Desktop\proiect vlsi\Microprocessor.sch
