DSCH 3.5
VERSION 15-Apr-19 1:47:19 PM
BB(-255,-190,164,150)
SYM  #button
BB(11,-139,20,-131)
TITLE 15 -135  #EnableAlu
MODEL 59
PROP                                                                                                                                    
REC(12,-138,6,6,r)
VIS 1
PIN(20,-135,0.000,0.000)EnableAlu
LIG(19,-135,20,-135)
LIG(11,-131,11,-139)
LIG(19,-131,11,-131)
LIG(19,-139,19,-131)
LIG(11,-139,19,-139)
LIG(12,-132,12,-138)
LIG(18,-132,12,-132)
LIG(18,-138,18,-132)
LIG(12,-138,18,-138)
FSYM
SYM  #light
BB(158,-110,164,-96)
TITLE 160 -96  #Carry
MODEL 49
PROP                                                                                                                                    
REC(159,-109,4,4,r)
VIS 1
PIN(160,-95,0.000,0.000)Carry
LIG(163,-104,163,-109)
LIG(163,-109,162,-110)
LIG(159,-109,159,-104)
LIG(162,-99,162,-102)
LIG(161,-99,164,-99)
LIG(161,-97,163,-99)
LIG(162,-97,164,-99)
LIG(158,-102,164,-102)
LIG(160,-102,160,-95)
LIG(158,-104,158,-102)
LIG(164,-104,158,-104)
LIG(164,-102,164,-104)
LIG(160,-110,159,-109)
LIG(162,-110,160,-110)
FSYM
SYM  #VSMAccumulatorA
BB(-145,60,-105,150)
TITLE -135 53  #VSM-AccumulatorA
MODEL 6000
PROP                                                                                                                                    
REC(-140,65,30,80,r)
VIS 5
PIN(-145,140,0.000,0.000)A[0]
PIN(-145,130,0.000,0.000)A[1]
PIN(-145,120,0.000,0.000)A[2]
PIN(-145,110,0.000,0.000)A[3]
PIN(-145,80,0.000,0.000)LatchA
PIN(-145,100,0.000,0.000)ClearA
PIN(-145,90,0.000,0.000)EnableA
PIN(-145,70,0.000,0.000)MainClock
PIN(-105,120,0.006,0.006)AluA2
PIN(-105,110,0.006,0.006)AluA3
PIN(-105,130,0.006,0.006)AluA1
PIN(-105,140,0.006,0.006)AluA0
PIN(-105,100,0.006,0.002)B0
PIN(-105,90,0.006,0.002)B1
PIN(-105,80,0.006,0.002)B2
PIN(-105,70,0.006,0.002)B3
LIG(-145,140,-140,140)
LIG(-145,130,-140,130)
LIG(-145,120,-140,120)
LIG(-145,110,-140,110)
LIG(-145,80,-140,80)
LIG(-145,100,-140,100)
LIG(-145,90,-140,90)
LIG(-145,70,-140,70)
LIG(-110,120,-105,120)
LIG(-110,110,-105,110)
LIG(-110,130,-105,130)
LIG(-110,140,-105,140)
LIG(-110,100,-105,100)
LIG(-110,90,-105,90)
LIG(-110,80,-105,80)
LIG(-110,70,-105,70)
LIG(-140,65,-140,145)
LIG(-140,65,-110,65)
LIG(-110,65,-110,145)
LIG(-110,145,-140,145)
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
SYM  #VSMAccumulatorB
BB(-145,-135,-105,-55)
TITLE -135 -142  #VSM-AccumulatorB
MODEL 6000
PROP                                                                                                                                    
REC(-140,-130,30,70,r)
VIS 5
PIN(-145,-65,0.000,0.000)Kbd[0]
PIN(-145,-75,0.000,0.000)Kbd[1]
PIN(-145,-85,0.000,0.000)Kbd[2]
PIN(-145,-95,0.000,0.000)Kbd[3]
PIN(-145,-105,0.000,0.000)ClearB
PIN(-145,-115,0.000,0.000)LatchB
PIN(-145,-125,0.000,0.000)MainClock
PIN(-105,-125,0.006,0.008)AluB3
PIN(-105,-115,0.006,0.008)AluB2
PIN(-105,-105,0.006,0.008)AluB1
PIN(-105,-95,0.006,0.008)AluB0
LIG(-145,-65,-140,-65)
LIG(-145,-75,-140,-75)
LIG(-145,-85,-140,-85)
LIG(-145,-95,-140,-95)
LIG(-145,-105,-140,-105)
LIG(-145,-115,-140,-115)
LIG(-145,-125,-140,-125)
LIG(-110,-125,-105,-125)
LIG(-110,-115,-105,-115)
LIG(-110,-105,-105,-105)
LIG(-110,-95,-105,-95)
LIG(-140,-130,-140,-60)
LIG(-140,-130,-110,-130)
LIG(-110,-130,-110,-60)
LIG(-110,-60,-140,-60)
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
SYM  #button
BB(-219,86,-210,94)
TITLE -215 90  #EnableA
MODEL 59
PROP                                                                                                                                    
REC(-218,87,6,6,r)
VIS 1
PIN(-210,90,0.000,0.000)EnableA
LIG(-211,90,-210,90)
LIG(-219,94,-219,86)
LIG(-211,94,-219,94)
LIG(-211,86,-211,94)
LIG(-219,86,-211,86)
LIG(-218,93,-218,87)
LIG(-212,93,-218,93)
LIG(-212,87,-212,93)
LIG(-218,87,-212,87)
FSYM
SYM  #digit
BB(120,-190,145,-155)
TITLE 120 -158  #digit3
MODEL 89
PROP                                                                                                                                    
REC(125,-185,15,21,r)
VIS 4
PIN(125,-155,0.000,0.000)digit3[1]
PIN(130,-155,0.000,0.000)digit3[2]
PIN(135,-155,0.000,0.000)digit3[3]
PIN(140,-155,0.000,0.000)digit3[4]
LIG(120,-190,120,-160)
LIG(145,-190,120,-190)
LIG(145,-160,145,-190)
LIG(120,-160,145,-160)
LIG(125,-160,125,-155)
LIG(130,-160,130,-155)
LIG(135,-160,135,-155)
LIG(140,-160,140,-155)
FSYM
SYM  #kbd
BB(-220,105,-170,145)
TITLE -220 147  #A
MODEL 85
PROP                                                                                                                                    
REC(-220,105,40,40,r)
VIS 4
PIN(-170,140,0.000,0.000)A[0]
PIN(-170,130,0.000,0.000)A[1]
PIN(-170,120,0.000,0.000)A[2]
PIN(-170,110,0.000,0.000)A[3]
LIG(-180,105,-180,145)
LIG(-220,105,-180,105)
LIG(-220,105,-220,145)
LIG(-186,110,-186,113)
LIG(-220,125,-180,125)
LIG(-200,105,-200,145)
LIG(-210,145,-210,105)
LIG(-220,115,-180,115)
LIG(-190,105,-190,145)
LIG(-220,135,-180,135)
LIG(-180,140,-170,140)
LIG(-170,130,-180,130)
LIG(-180,120,-170,120)
LIG(-170,110,-180,110)
LIG(-216,143,-216,137)
LIG(-216,137,-214,137)
LIG(-214,137,-214,143)
LIG(-214,143,-216,143)
LIG(-204,143,-204,137)
LIG(-196,137,-194,137)
LIG(-194,137,-194,139)
LIG(-194,139,-196,139)
LIG(-196,139,-196,143)
LIG(-196,143,-194,143)
LIG(-186,143,-184,143)
LIG(-184,137,-186,137)
LIG(-184,137,-184,143)
LIG(-186,139,-184,139)
LIG(-216,127,-216,131)
LIG(-216,131,-214,131)
LIG(-214,127,-214,133)
LIG(-204,127,-206,127)
LIG(-206,127,-206,129)
LIG(-206,129,-204,129)
LIG(-204,129,-204,133)
LIG(-204,133,-206,133)
LIG(-196,127,-196,133)
LIG(-196,133,-194,133)
LIG(-194,133,-194,129)
LIG(-194,129,-196,129)
LIG(-186,127,-184,127)
LIG(-184,127,-184,133)
LIG(-216,117,-216,123)
LIG(-216,117,-214,117)
LIG(-214,117,-214,123)
LIG(-214,123,-216,123)
LIG(-216,119,-214,119)
LIG(-186,110,-184,110)
LIG(-220,145,-180,145)
LIG(-206,117,-204,117)
LIG(-186,107,-186,110)
LIG(-197,113,-197,110)
LIG(-197,107,-194,107)
LIG(-206,107,-206,113)
LIG(-217,113,-217,107)
LIG(-217,107,-214,107)
LIG(-187,117,-184,117)
LIG(-184,117,-183,118)
LIG(-183,118,-184,119)
LIG(-187,119,-184,119)
LIG(-187,123,-187,119)
LIG(-206,119,-204,119)
LIG(-217,113,-214,113)
LIG(-206,117,-206,119)
LIG(-204,119,-204,123)
LIG(-204,117,-204,119)
LIG(-204,123,-206,123)
LIG(-197,113,-194,113)
LIG(-197,123,-195,117)
LIG(-195,117,-193,123)
LIG(-187,119,-187,117)
LIG(-184,119,-183,120)
LIG(-186,107,-183,107)
LIG(-183,120,-183,122)
LIG(-197,121,-193,121)
LIG(-203,112,-204,113)
LIG(-183,122,-184,123)
LIG(-197,110,-197,107)
LIG(-197,110,-195,110)
LIG(-203,108,-203,112)
LIG(-204,107,-203,108)
LIG(-207,113,-206,113)
LIG(-207,107,-206,107)
LIG(-187,123,-184,123)
LIG(-206,107,-204,107)
LIG(-206,113,-204,113)
FSYM
SYM  #kbd
BB(-220,-100,-170,-60)
TITLE -220 -58  #B
MODEL 85
PROP                                                                                                                                    
REC(-220,-100,40,40,r)
VIS 4
PIN(-170,-65,0.000,0.000)B[0]
PIN(-170,-75,0.000,0.000)B[1]
PIN(-170,-85,0.000,0.000)B[2]
PIN(-170,-95,0.000,0.000)B[3]
LIG(-180,-100,-180,-60)
LIG(-220,-100,-180,-100)
LIG(-220,-100,-220,-60)
LIG(-186,-95,-186,-92)
LIG(-220,-80,-180,-80)
LIG(-200,-100,-200,-60)
LIG(-210,-60,-210,-100)
LIG(-220,-90,-180,-90)
LIG(-190,-100,-190,-60)
LIG(-220,-70,-180,-70)
LIG(-180,-65,-170,-65)
LIG(-170,-75,-180,-75)
LIG(-180,-85,-170,-85)
LIG(-170,-95,-180,-95)
LIG(-216,-62,-216,-68)
LIG(-216,-68,-214,-68)
LIG(-214,-68,-214,-62)
LIG(-214,-62,-216,-62)
LIG(-204,-62,-204,-68)
LIG(-196,-68,-194,-68)
LIG(-194,-68,-194,-66)
LIG(-194,-66,-196,-66)
LIG(-196,-66,-196,-62)
LIG(-196,-62,-194,-62)
LIG(-186,-62,-184,-62)
LIG(-184,-68,-186,-68)
LIG(-184,-68,-184,-62)
LIG(-186,-66,-184,-66)
LIG(-216,-78,-216,-74)
LIG(-216,-74,-214,-74)
LIG(-214,-78,-214,-72)
LIG(-204,-78,-206,-78)
LIG(-206,-78,-206,-76)
LIG(-206,-76,-204,-76)
LIG(-204,-76,-204,-72)
LIG(-204,-72,-206,-72)
LIG(-196,-78,-196,-72)
LIG(-196,-72,-194,-72)
LIG(-194,-72,-194,-76)
LIG(-194,-76,-196,-76)
LIG(-186,-78,-184,-78)
LIG(-184,-78,-184,-72)
LIG(-216,-88,-216,-82)
LIG(-216,-88,-214,-88)
LIG(-214,-88,-214,-82)
LIG(-214,-82,-216,-82)
LIG(-216,-86,-214,-86)
LIG(-186,-95,-184,-95)
LIG(-220,-60,-180,-60)
LIG(-206,-88,-204,-88)
LIG(-186,-98,-186,-95)
LIG(-197,-92,-197,-95)
LIG(-197,-98,-194,-98)
LIG(-206,-98,-206,-92)
LIG(-217,-92,-217,-98)
LIG(-217,-98,-214,-98)
LIG(-187,-88,-184,-88)
LIG(-184,-88,-183,-87)
LIG(-183,-87,-184,-86)
LIG(-187,-86,-184,-86)
LIG(-187,-82,-187,-86)
LIG(-206,-86,-204,-86)
LIG(-217,-92,-214,-92)
LIG(-206,-88,-206,-86)
LIG(-204,-86,-204,-82)
LIG(-204,-88,-204,-86)
LIG(-204,-82,-206,-82)
LIG(-197,-92,-194,-92)
LIG(-197,-82,-195,-88)
LIG(-195,-88,-193,-82)
LIG(-187,-86,-187,-88)
LIG(-184,-86,-183,-85)
LIG(-186,-98,-183,-98)
LIG(-183,-85,-183,-83)
LIG(-197,-84,-193,-84)
LIG(-203,-93,-204,-92)
LIG(-183,-83,-184,-82)
LIG(-197,-95,-197,-98)
LIG(-197,-95,-195,-95)
LIG(-203,-97,-203,-93)
LIG(-204,-98,-203,-97)
LIG(-207,-92,-206,-92)
LIG(-207,-98,-206,-98)
LIG(-187,-82,-184,-82)
LIG(-206,-98,-204,-98)
LIG(-206,-92,-204,-92)
FSYM
SYM  #button
BB(-219,76,-210,84)
TITLE -215 80  #LatchA
MODEL 59
PROP                                                                                                                                    
REC(-218,77,6,6,r)
VIS 1
PIN(-210,80,0.000,0.000)LatchA
LIG(-211,80,-210,80)
LIG(-219,84,-219,76)
LIG(-211,84,-219,84)
LIG(-211,76,-211,84)
LIG(-219,76,-211,76)
LIG(-218,83,-218,77)
LIG(-212,83,-218,83)
LIG(-212,77,-212,83)
LIG(-218,77,-212,77)
FSYM
SYM  #button
BB(-219,-119,-210,-111)
TITLE -215 -115  #LatchB
MODEL 59
PROP                                                                                                                                    
REC(-218,-118,6,6,r)
VIS 1
PIN(-210,-115,0.000,0.000)LatchB
LIG(-211,-115,-210,-115)
LIG(-219,-111,-219,-119)
LIG(-211,-111,-219,-111)
LIG(-211,-119,-211,-111)
LIG(-219,-119,-211,-119)
LIG(-218,-112,-218,-118)
LIG(-212,-112,-218,-112)
LIG(-212,-118,-212,-112)
LIG(-218,-118,-212,-118)
FSYM
SYM  #digit
BB(-50,-190,-25,-155)
TITLE -50 -158  #digit2
MODEL 89
PROP                                                                                                                                    
REC(-45,-185,15,21,r)
VIS 4
PIN(-45,-155,0.000,0.000)digit2[1]
PIN(-40,-155,0.000,0.000)digit2[2]
PIN(-35,-155,0.000,0.000)digit2[3]
PIN(-30,-155,0.000,0.000)digit2[4]
LIG(-50,-190,-50,-160)
LIG(-25,-190,-50,-190)
LIG(-25,-160,-25,-190)
LIG(-50,-160,-25,-160)
LIG(-45,-160,-45,-155)
LIG(-40,-160,-40,-155)
LIG(-35,-160,-35,-155)
LIG(-30,-160,-30,-155)
FSYM
SYM  #digit
BB(-50,15,-25,50)
TITLE -50 47  #digit1
MODEL 89
PROP                                                                                                                                    
REC(-45,20,15,21,r)
VIS 4
PIN(-45,50,0.000,0.000)digit1[1]
PIN(-40,50,0.000,0.000)digit1[2]
PIN(-35,50,0.000,0.000)digit1[3]
PIN(-30,50,0.000,0.000)digit1[4]
LIG(-50,15,-50,45)
LIG(-25,15,-50,15)
LIG(-25,45,-25,15)
LIG(-50,45,-25,45)
LIG(-45,45,-45,50)
LIG(-40,45,-40,50)
LIG(-35,45,-35,50)
LIG(-30,45,-30,50)
FSYM
SYM  #clock
BB(-255,-128,-240,-122)
TITLE -250 -125  #clock1
MODEL 69
PROP   10 10 0                                                                                                                               
REC(-253,-127,6,4,r)
VIS 1
PIN(-240,-125,0.150,0.003)MainClock
LIG(-245,-125,-240,-125)
LIG(-250,-127,-252,-127)
LIG(-246,-127,-248,-127)
LIG(-245,-128,-245,-122)
LIG(-255,-122,-255,-128)
LIG(-250,-123,-250,-127)
LIG(-248,-127,-248,-123)
LIG(-248,-123,-250,-123)
LIG(-252,-123,-254,-123)
LIG(-252,-127,-252,-123)
LIG(-245,-122,-255,-122)
LIG(-245,-128,-255,-128)
FSYM
SYM  #button
BB(-254,96,-245,104)
TITLE -250 100  #~MainReset
MODEL 59
PROP                                                                                                                                    
REC(-253,97,6,6,r)
VIS 1
PIN(-245,100,0.000,0.000)~MainReset
LIG(-246,100,-245,100)
LIG(-254,104,-254,96)
LIG(-246,104,-254,104)
LIG(-246,96,-246,104)
LIG(-254,96,-246,96)
LIG(-253,103,-253,97)
LIG(-247,103,-253,103)
LIG(-247,97,-247,103)
LIG(-253,97,-247,97)
FSYM
SYM  #button
BB(-39,-89,-30,-81)
TITLE -35 -85  #AddSub
MODEL 59
PROP                                                                                                                                    
REC(-38,-88,6,6,r)
VIS 1
PIN(-30,-85,0.000,0.000)AddSub
LIG(-31,-85,-30,-85)
LIG(-39,-81,-39,-89)
LIG(-31,-81,-39,-81)
LIG(-31,-89,-31,-81)
LIG(-39,-89,-31,-89)
LIG(-38,-82,-38,-88)
LIG(-32,-82,-38,-82)
LIG(-32,-88,-32,-82)
LIG(-38,-88,-32,-88)
FSYM
SYM  #VSMArithmeticUnit
BB(50,-145,90,-35)
TITLE 60 -152  #VSM-ArithmeticUnit
MODEL 6000
PROP                                                                                                                                   
REC(55,-140,30,100,r)
VIS 5
PIN(50,-45,0.000,0.000)A[0]
PIN(50,-55,0.000,0.000)A[1]
PIN(50,-65,0.000,0.000)A[2]
PIN(50,-75,0.000,0.000)A[3]
PIN(50,-95,0.000,0.000)B[0]
PIN(50,-105,0.000,0.000)B[1]
PIN(50,-115,0.000,0.000)B[2]
PIN(50,-125,0.000,0.000)B[3]
PIN(50,-135,0.000,0.000)EnableAlu
PIN(50,-85,0.000,0.000)AddSub
PIN(90,-95,0.006,0.003)Carry
PIN(90,-135,0.006,0.003)IB_Alu[3]
PIN(90,-125,0.006,0.003)IB_Alu[2]
PIN(90,-115,0.006,0.003)IB_Alu[1]
PIN(90,-105,0.003,0.003)IB_Alu[0]
LIG(50,-45,55,-45)
LIG(50,-55,55,-55)
LIG(50,-65,55,-65)
LIG(50,-75,55,-75)
LIG(50,-95,55,-95)
LIG(50,-105,55,-105)
LIG(50,-115,55,-115)
LIG(50,-125,55,-125)
LIG(50,-135,55,-135)
LIG(50,-85,55,-85)
LIG(85,-95,90,-95)
LIG(85,-135,90,-135)
LIG(85,-125,90,-125)
LIG(85,-115,90,-115)
LIG(85,-105,90,-105)
LIG(55,-140,55,-40)
LIG(55,-140,85,-140)
LIG(85,-140,85,-40)
LIG(85,-40,55,-40)
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
CNC(-230 100)
CNC(-235 -125)
CNC(-45 -125)
CNC(-40 -115)
CNC(-35 -105)
CNC(-35 -105)
CNC(-30 140)
CNC(-35 130)
CNC(-40 120)
CNC(-45 110)
CNC(-45 110)
CNC(-30 -95)
LIG(-170,110,-145,110)
LIG(-170,120,-145,120)
LIG(-170,130,-145,130)
LIG(-170,140,-145,140)
LIG(-170,-95,-145,-95)
LIG(-170,-65,-145,-65)
LIG(-170,-75,-145,-75)
LIG(-170,-85,-145,-85)
LIG(20,-135,50,-135)
LIG(-210,90,-145,90)
LIG(-210,80,-145,80)
LIG(-210,-115,-145,-115)
LIG(90,-95,160,-95)
LIG(-145,-105,-230,-105)
LIG(-230,-105,-230,100)
LIG(-245,100,-230,100)
LIG(-230,100,-145,100)
LIG(125,-135,125,-155)
LIG(-145,70,-235,70)
LIG(-235,70,-235,-125)
LIG(-240,-125,-235,-125)
LIG(-235,-125,-145,-125)
LIG(90,-135,125,-135)
LIG(130,-125,130,-155)
LIG(90,-125,130,-125)
LIG(135,-115,135,-155)
LIG(90,-115,135,-115)
LIG(140,-105,140,-155)
LIG(45,140,45,-45)
LIG(45,-45,50,-45)
LIG(90,-105,140,-105)
LIG(35,130,35,-55)
LIG(35,-55,50,-55)
LIG(-45,-125,50,-125)
LIG(25,120,25,-65)
LIG(25,-65,50,-65)
LIG(-105,-125,-45,-125)
LIG(15,110,15,-75)
LIG(15,-75,50,-75)
LIG(-30,-85,50,-85)
LIG(-45,-155,-45,-125)
LIG(-40,-115,50,-115)
LIG(-105,-115,-40,-115)
LIG(-40,-155,-40,-115)
LIG(-35,-155,-35,-105)
LIG(-35,-105,50,-105)
LIG(-105,-105,-35,-105)
LIG(-30,-95,50,-95)
LIG(-105,-95,-30,-95)
LIG(-30,-155,-30,-95)
LIG(-45,50,-45,110)
LIG(-45,110,15,110)
LIG(-105,110,-45,110)
LIG(-40,120,25,120)
LIG(-105,120,-40,120)
LIG(-40,50,-40,120)
LIG(-35,130,35,130)
LIG(-105,130,-35,130)
LIG(-30,50,-30,140)
LIG(-105,140,-30,140)
LIG(-30,140,45,140)
LIG(-35,50,-35,130)
FFIG C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-RegARegBAlu.sch
