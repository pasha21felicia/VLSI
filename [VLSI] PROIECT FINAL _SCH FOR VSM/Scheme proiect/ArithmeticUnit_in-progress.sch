DSCH 3.5
VERSION 15-Apr-19 1:42:28 PM
BB(-250,-140,255,200)
SYM  #bufif1
BB(155,110,190,130)
TITLE 170 120  #1
MODEL 131
PROP                                                                                                                                    
REC(5,0,0,0, )
VIS 0
PIN(155,120,0.000,0.000)in
PIN(170,105,0.000,0.000)en
PIN(190,120,0.003,0.002)out
LIG(155,120,165,120)
LIG(165,110,165,130)
LIG(165,110,180,120)
LIG(165,130,180,120)
LIG(180,120,190,120)
LIG(170,105,170,114)
VLG bufif1 bufif1(out,in,en);
FSYM
SYM  #bufif1
BB(155,45,190,65)
TITLE 170 55  #1
MODEL 131
PROP                                                                                                                                    
REC(0,5,0,0, )
VIS 0
PIN(155,55,0.000,0.000)in
PIN(170,40,0.000,0.000)en
PIN(190,55,0.003,0.002)out
LIG(155,55,165,55)
LIG(165,45,165,65)
LIG(165,45,180,55)
LIG(165,65,180,55)
LIG(180,55,190,55)
LIG(170,40,170,49)
VLG bufif1 bufif1(out,in,en);
FSYM
SYM  #bufif1
BB(155,-20,190,0)
TITLE 170 -10  #1
MODEL 131
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(155,-10,0.000,0.000)in
PIN(170,-25,0.000,0.000)en
PIN(190,-10,0.003,0.002)out
LIG(155,-10,165,-10)
LIG(165,-20,165,0)
LIG(165,-20,180,-10)
LIG(165,0,180,-10)
LIG(180,-10,190,-10)
LIG(170,-25,170,-16)
VLG bufif1 bufif1(out,in,en);
FSYM
SYM  #inv
BB(-145,10,-110,30)
TITLE -130 20  #~
MODEL 101
PROP                                                                                                                                    
REC(0,-5,0,0, )
VIS 0
PIN(-145,20,0.000,0.000)in
PIN(-110,20,0.003,0.002)out
LIG(-145,20,-135,20)
LIG(-135,10,-135,30)
LIG(-135,10,-120,20)
LIG(-135,30,-120,20)
LIG(-118,20,-118,20)
LIG(-116,20,-110,20)
VLG not not1(out,in);
FSYM
SYM  #mux
BB(-85,5,-65,30)
TITLE -78 12  #mux
MODEL 143
PROP                                                                                                                                    
REC(0,10,0,0, )
VIS 3
PIN(-85,10,0.000,0.000)i0
PIN(-85,20,0.000,0.000)i1
PIN(-75,30,0.000,0.000)sel
PIN(-65,15,0.003,0.005)f
LIG(-85,10,-80,10)
LIG(-80,5,-80,10)
LIG(-80,10,-80,20)
LIG(-85,20,-80,20)
LIG(-80,20,-80,25)
LIG(-70,10,-70,15)
LIG(-70,15,-65,15)
LIG(-70,15,-70,20)
LIG(-80,5,-70,10)
LIG(-80,25,-70,20)
LIG(-75,30,-75,22)
VLG mux mux1(f,i0,i1,sel);
FSYM
SYM  #inv
BB(-145,115,-110,135)
TITLE -130 125  #~
MODEL 101
PROP                                                                                                                                    
REC(0,15,0,0, )
VIS 0
PIN(-145,125,0.000,0.000)in
PIN(-110,125,0.003,0.002)out
LIG(-145,125,-135,125)
LIG(-135,115,-135,135)
LIG(-135,115,-120,125)
LIG(-135,135,-120,125)
LIG(-118,125,-118,125)
LIG(-116,125,-110,125)
VLG not not1(out,in);
FSYM
SYM  #kbd
BB(-250,5,-200,45)
TITLE -250 47  #A
MODEL 85
PROP                                                                                                                                    
REC(-250,5,40,40,r)
VIS 4
PIN(-200,40,0.000,0.000)A[0]
PIN(-200,30,0.000,0.000)A[1]
PIN(-200,20,0.000,0.000)A[2]
PIN(-200,10,0.000,0.000)A[3]
LIG(-210,5,-210,45)
LIG(-250,5,-210,5)
LIG(-250,5,-250,45)
LIG(-216,10,-216,13)
LIG(-250,25,-210,25)
LIG(-230,5,-230,45)
LIG(-240,45,-240,5)
LIG(-250,15,-210,15)
LIG(-220,5,-220,45)
LIG(-250,35,-210,35)
LIG(-210,40,-200,40)
LIG(-200,30,-210,30)
LIG(-210,20,-200,20)
LIG(-200,10,-210,10)
LIG(-246,43,-246,37)
LIG(-246,37,-244,37)
LIG(-244,37,-244,43)
LIG(-244,43,-246,43)
LIG(-234,43,-234,37)
LIG(-226,37,-224,37)
LIG(-224,37,-224,39)
LIG(-224,39,-226,39)
LIG(-226,39,-226,43)
LIG(-226,43,-224,43)
LIG(-216,43,-214,43)
LIG(-214,37,-216,37)
LIG(-214,37,-214,43)
LIG(-216,39,-214,39)
LIG(-246,27,-246,31)
LIG(-246,31,-244,31)
LIG(-244,27,-244,33)
LIG(-234,27,-236,27)
LIG(-236,27,-236,29)
LIG(-236,29,-234,29)
LIG(-234,29,-234,33)
LIG(-234,33,-236,33)
LIG(-226,27,-226,33)
LIG(-226,33,-224,33)
LIG(-224,33,-224,29)
LIG(-224,29,-226,29)
LIG(-216,27,-214,27)
LIG(-214,27,-214,33)
LIG(-246,17,-246,23)
LIG(-246,17,-244,17)
LIG(-244,17,-244,23)
LIG(-244,23,-246,23)
LIG(-246,19,-244,19)
LIG(-216,10,-214,10)
LIG(-250,45,-210,45)
LIG(-236,17,-234,17)
LIG(-216,7,-216,10)
LIG(-227,13,-227,10)
LIG(-227,7,-224,7)
LIG(-236,7,-236,13)
LIG(-247,13,-247,7)
LIG(-247,7,-244,7)
LIG(-217,17,-214,17)
LIG(-214,17,-213,18)
LIG(-213,18,-214,19)
LIG(-217,19,-214,19)
LIG(-217,23,-217,19)
LIG(-236,19,-234,19)
LIG(-247,13,-244,13)
LIG(-236,17,-236,19)
LIG(-234,19,-234,23)
LIG(-234,17,-234,19)
LIG(-234,23,-236,23)
LIG(-227,13,-224,13)
LIG(-227,23,-225,17)
LIG(-225,17,-223,23)
LIG(-217,19,-217,17)
LIG(-214,19,-213,20)
LIG(-216,7,-213,7)
LIG(-213,20,-213,22)
LIG(-227,21,-223,21)
LIG(-233,12,-234,13)
LIG(-213,22,-214,23)
LIG(-227,10,-227,7)
LIG(-227,10,-225,10)
LIG(-233,8,-233,12)
LIG(-234,7,-233,8)
LIG(-237,13,-236,13)
LIG(-237,7,-236,7)
LIG(-217,23,-214,23)
LIG(-236,7,-234,7)
LIG(-236,13,-234,13)
FSYM
SYM  #kbd
BB(-250,-95,-200,-55)
TITLE -250 -53  #B
MODEL 85
PROP                                                                                                                                    
REC(-250,-95,40,40,r)
VIS 4
PIN(-200,-60,0.000,0.000)B[0]
PIN(-200,-70,0.000,0.000)B[1]
PIN(-200,-80,0.000,0.000)B[2]
PIN(-200,-90,0.000,0.000)B[3]
LIG(-210,-95,-210,-55)
LIG(-250,-95,-210,-95)
LIG(-250,-95,-250,-55)
LIG(-216,-90,-216,-87)
LIG(-250,-75,-210,-75)
LIG(-230,-95,-230,-55)
LIG(-240,-55,-240,-95)
LIG(-250,-85,-210,-85)
LIG(-220,-95,-220,-55)
LIG(-250,-65,-210,-65)
LIG(-210,-60,-200,-60)
LIG(-200,-70,-210,-70)
LIG(-210,-80,-200,-80)
LIG(-200,-90,-210,-90)
LIG(-246,-57,-246,-63)
LIG(-246,-63,-244,-63)
LIG(-244,-63,-244,-57)
LIG(-244,-57,-246,-57)
LIG(-234,-57,-234,-63)
LIG(-226,-63,-224,-63)
LIG(-224,-63,-224,-61)
LIG(-224,-61,-226,-61)
LIG(-226,-61,-226,-57)
LIG(-226,-57,-224,-57)
LIG(-216,-57,-214,-57)
LIG(-214,-63,-216,-63)
LIG(-214,-63,-214,-57)
LIG(-216,-61,-214,-61)
LIG(-246,-73,-246,-69)
LIG(-246,-69,-244,-69)
LIG(-244,-73,-244,-67)
LIG(-234,-73,-236,-73)
LIG(-236,-73,-236,-71)
LIG(-236,-71,-234,-71)
LIG(-234,-71,-234,-67)
LIG(-234,-67,-236,-67)
LIG(-226,-73,-226,-67)
LIG(-226,-67,-224,-67)
LIG(-224,-67,-224,-71)
LIG(-224,-71,-226,-71)
LIG(-216,-73,-214,-73)
LIG(-214,-73,-214,-67)
LIG(-246,-83,-246,-77)
LIG(-246,-83,-244,-83)
LIG(-244,-83,-244,-77)
LIG(-244,-77,-246,-77)
LIG(-246,-81,-244,-81)
LIG(-216,-90,-214,-90)
LIG(-250,-55,-210,-55)
LIG(-236,-83,-234,-83)
LIG(-216,-93,-216,-90)
LIG(-227,-87,-227,-90)
LIG(-227,-93,-224,-93)
LIG(-236,-93,-236,-87)
LIG(-247,-87,-247,-93)
LIG(-247,-93,-244,-93)
LIG(-217,-83,-214,-83)
LIG(-214,-83,-213,-82)
LIG(-213,-82,-214,-81)
LIG(-217,-81,-214,-81)
LIG(-217,-77,-217,-81)
LIG(-236,-81,-234,-81)
LIG(-247,-87,-244,-87)
LIG(-236,-83,-236,-81)
LIG(-234,-81,-234,-77)
LIG(-234,-83,-234,-81)
LIG(-234,-77,-236,-77)
LIG(-227,-87,-224,-87)
LIG(-227,-77,-225,-83)
LIG(-225,-83,-223,-77)
LIG(-217,-81,-217,-83)
LIG(-214,-81,-213,-80)
LIG(-216,-93,-213,-93)
LIG(-213,-80,-213,-78)
LIG(-227,-79,-223,-79)
LIG(-233,-88,-234,-87)
LIG(-213,-78,-214,-77)
LIG(-227,-90,-227,-93)
LIG(-227,-90,-225,-90)
LIG(-233,-92,-233,-88)
LIG(-234,-93,-233,-92)
LIG(-237,-87,-236,-87)
LIG(-237,-93,-236,-93)
LIG(-217,-77,-214,-77)
LIG(-236,-93,-234,-93)
LIG(-236,-87,-234,-87)
FSYM
SYM  #bufif1
BB(155,-85,190,-65)
TITLE 170 -75  #1
MODEL 131
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(155,-75,0.000,0.000)in
PIN(170,-90,0.000,0.000)en
PIN(190,-75,0.003,0.002)out
LIG(155,-75,165,-75)
LIG(165,-85,165,-65)
LIG(165,-85,180,-75)
LIG(165,-65,180,-75)
LIG(180,-75,190,-75)
LIG(170,-90,170,-81)
VLG bufif1 bufif1(out,in,en);
FSYM
SYM  #light
BB(123,-140,129,-126)
TITLE 125 -126  #Carry
MODEL 49
PROP                                                                                                                                    
REC(124,-139,4,4,r)
VIS 1
PIN(125,-125,0.000,0.000)Carry
LIG(128,-134,128,-139)
LIG(128,-139,127,-140)
LIG(124,-139,124,-134)
LIG(127,-129,127,-132)
LIG(126,-129,129,-129)
LIG(126,-127,128,-129)
LIG(127,-127,129,-129)
LIG(123,-132,129,-132)
LIG(125,-132,125,-125)
LIG(123,-134,123,-132)
LIG(129,-134,123,-134)
LIG(129,-132,129,-134)
LIG(125,-140,124,-139)
LIG(127,-140,125,-140)
FSYM
SYM  #digit
BB(230,-120,255,-85)
TITLE 230 -88  #digit1
MODEL 89
PROP                                                                                                                                    
REC(235,-115,15,21,r)
VIS 4
PIN(235,-85,0.000,0.000)digit1[1]
PIN(240,-85,0.000,0.000)digit1[2]
PIN(245,-85,0.000,0.000)digit1[3]
PIN(250,-85,0.000,0.000)digit1[4]
LIG(230,-120,230,-90)
LIG(255,-120,230,-120)
LIG(255,-90,255,-120)
LIG(230,-90,255,-90)
LIG(235,-90,235,-85)
LIG(240,-90,240,-85)
LIG(245,-90,245,-85)
LIG(250,-90,250,-85)
FSYM
SYM  #VSMfullAdder
BB(60,-30,100,10)
TITLE 70 -37  #VSM-fullAdder
MODEL 6000
PROP                                                                                                                                    
REC(65,-25,30,30,r)
VIS 5
PIN(60,0,0.000,0.000)C
PIN(60,-10,0.000,0.000)B
PIN(60,-20,0.000,0.000)A
PIN(100,-10,0.006,0.005)Carry
PIN(100,-20,0.003,0.003)Sum
LIG(60,0,65,0)
LIG(60,-10,65,-10)
LIG(60,-20,65,-20)
LIG(95,-10,100,-10)
LIG(95,-20,100,-20)
LIG(65,-25,65,5)
LIG(65,-25,95,-25)
LIG(95,-25,95,5)
LIG(95,5,65,5)
VLG module VSMfullAdder( C,B,A,Carry,Sum);
VLG input C,B,A;
VLG output Carry,Sum;
VLG wire w7;
VLG assign Carry=(A&B)|(C&(A|B))
VLG xor #(2) xor2_1(w7,A,B);
VLG xor #(2) xor2_2(Sum,w7,C);
VLG endmodule
FSYM
SYM  #VSMfullAdder
BB(60,35,100,75)
TITLE 70 28  #VSM-fullAdder
MODEL 6000
PROP                                                                                                                                    
REC(65,40,30,30,r)
VIS 5
PIN(60,65,0.000,0.000)C
PIN(60,55,0.000,0.000)B
PIN(60,45,0.000,0.000)A
PIN(100,55,0.006,0.005)Carry
PIN(100,45,0.003,0.003)Sum
LIG(60,65,65,65)
LIG(60,55,65,55)
LIG(60,45,65,45)
LIG(95,55,100,55)
LIG(95,45,100,45)
LIG(65,40,65,70)
LIG(65,40,95,40)
LIG(95,40,95,70)
LIG(95,70,65,70)
VLG module VSMfullAdder( C,B,A,Carry,Sum);
VLG input C,B,A;
VLG output Carry,Sum;
VLG wire w7;
VLG assign Carry=(A&B)|(C&(A|B))
VLG xor #(2) xor2_1(w7,A,B);
VLG xor #(2) xor2_2(Sum,w7,C);
VLG endmodule
FSYM
SYM  #VSMfullAdder
BB(60,100,100,140)
TITLE 70 93  #VSM-fullAdder
MODEL 6000
PROP                                                                                                                                    
REC(65,105,30,30,r)
VIS 5
PIN(60,130,0.000,0.000)C
PIN(60,120,0.000,0.000)B
PIN(60,110,0.000,0.000)A
PIN(100,120,0.006,0.005)Carry
PIN(100,110,0.003,0.003)Sum
LIG(60,130,65,130)
LIG(60,120,65,120)
LIG(60,110,65,110)
LIG(95,120,100,120)
LIG(95,110,100,110)
LIG(65,105,65,135)
LIG(65,105,95,105)
LIG(95,105,95,135)
LIG(95,135,65,135)
VLG module VSMfullAdder( C,B,A,Carry,Sum);
VLG input C,B,A;
VLG output Carry,Sum;
VLG wire w7;
VLG assign Carry=(A&B)|(C&(A|B))
VLG xor #(2) xor2_1(w7,A,B);
VLG xor #(2) xor2_2(Sum,w7,C);
VLG endmodule
FSYM
SYM  #button
BB(-249,-114,-240,-106)
TITLE -245 -110  #EnableAlu
MODEL 59
PROP                                                                                                                                    
REC(-248,-113,6,6,r)
VIS 1
PIN(-240,-110,0.000,0.000)EnableAlu
LIG(-241,-110,-240,-110)
LIG(-249,-106,-249,-114)
LIG(-241,-106,-249,-106)
LIG(-241,-114,-241,-106)
LIG(-249,-114,-241,-114)
LIG(-248,-107,-248,-113)
LIG(-242,-107,-248,-107)
LIG(-242,-113,-242,-107)
LIG(-248,-113,-242,-113)
FSYM
SYM  #vss
BB(-25,147,-15,155)
TITLE -21 152  #vss
MODEL 0
PROP                                                                                                                                    
REC(-25,145,0,0,b)
VIS 0
PIN(-20,145,0.000,0.000)vss
LIG(-20,145,-20,150)
LIG(-25,150,-15,150)
LIG(-25,153,-23,150)
LIG(-23,153,-21,150)
LIG(-21,153,-19,150)
LIG(-19,153,-17,150)
FSYM
SYM  #vdd
BB(-25,190,-15,200)
TITLE -22 196  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(-20,200,0.000,0.000)vdd
LIG(-20,200,-20,195)
LIG(-20,195,-25,195)
LIG(-25,195,-20,190)
LIG(-20,190,-15,195)
LIG(-15,195,-20,195)
FSYM
SYM  #mux
BB(-5,140,15,165)
TITLE 2 147  #mux
MODEL 143
PROP                                                                                                                                    
REC(5,5,0,0, )
VIS 3
PIN(-5,145,0.000,0.000)i0
PIN(-5,155,0.000,0.000)i1
PIN(5,165,0.000,0.000)sel
PIN(15,150,0.003,0.003)f
LIG(-5,145,0,145)
LIG(0,140,0,145)
LIG(0,145,0,155)
LIG(-5,155,0,155)
LIG(0,155,0,160)
LIG(10,145,10,150)
LIG(10,150,15,150)
LIG(10,150,10,155)
LIG(0,140,10,145)
LIG(0,160,10,155)
LIG(5,165,5,157)
VLG mux mux1(f,i0,i1,sel);
FSYM
SYM  #button
BB(-249,151,-240,159)
TITLE -245 155  #AddSub
MODEL 59
PROP                                                                                                                                    
REC(-248,152,6,6,r)
VIS 1
PIN(-240,155,0.000,0.000)AddSub
LIG(-241,155,-240,155)
LIG(-249,159,-249,151)
LIG(-241,159,-249,159)
LIG(-241,151,-241,159)
LIG(-249,151,-241,151)
LIG(-248,158,-248,152)
LIG(-242,158,-248,158)
LIG(-242,152,-242,158)
LIG(-248,152,-242,152)
FSYM
SYM  #mux
BB(-85,110,-65,135)
TITLE -78 117  #mux
MODEL 143
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 3
PIN(-85,115,0.000,0.000)i0
PIN(-85,125,0.000,0.000)i1
PIN(-75,135,0.000,0.000)sel
PIN(-65,120,0.003,0.005)f
LIG(-85,115,-80,115)
LIG(-80,110,-80,115)
LIG(-80,115,-80,125)
LIG(-85,125,-80,125)
LIG(-80,125,-80,130)
LIG(-70,115,-70,120)
LIG(-70,120,-65,120)
LIG(-70,120,-70,125)
LIG(-80,110,-70,115)
LIG(-80,130,-70,125)
LIG(-75,135,-75,127)
VLG mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(-85,75,-65,100)
TITLE -78 82  #mux
MODEL 143
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 3
PIN(-85,80,0.000,0.000)i0
PIN(-85,90,0.000,0.000)i1
PIN(-75,100,0.000,0.000)sel
PIN(-65,85,0.003,0.005)f
LIG(-85,80,-80,80)
LIG(-80,75,-80,80)
LIG(-80,80,-80,90)
LIG(-85,90,-80,90)
LIG(-80,90,-80,95)
LIG(-70,80,-70,85)
LIG(-70,85,-65,85)
LIG(-70,85,-70,90)
LIG(-80,75,-70,80)
LIG(-80,95,-70,90)
LIG(-75,100,-75,92)
VLG mux mux1(f,i0,i1,sel);
FSYM
SYM  #mux
BB(-85,40,-65,65)
TITLE -78 47  #mux
MODEL 143
PROP                                                                                                                                    
REC(5,10,0,0, )
VIS 3
PIN(-85,45,0.000,0.000)i0
PIN(-85,55,0.000,0.000)i1
PIN(-75,65,0.000,0.000)sel
PIN(-65,50,0.003,0.005)f
LIG(-85,45,-80,45)
LIG(-80,40,-80,45)
LIG(-80,45,-80,55)
LIG(-85,55,-80,55)
LIG(-80,55,-80,60)
LIG(-70,45,-70,50)
LIG(-70,50,-65,50)
LIG(-70,50,-70,55)
LIG(-80,40,-70,45)
LIG(-80,60,-70,55)
LIG(-75,65,-75,57)
VLG mux mux1(f,i0,i1,sel);
FSYM
SYM  #inv
BB(-145,45,-110,65)
TITLE -130 55  #~
MODEL 101
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(-145,55,0.000,0.000)in
PIN(-110,55,0.003,0.002)out
LIG(-145,55,-135,55)
LIG(-135,45,-135,65)
LIG(-135,45,-120,55)
LIG(-135,65,-120,55)
LIG(-118,55,-118,55)
LIG(-116,55,-110,55)
VLG not not1(out,in);
FSYM
SYM  #inv
BB(-145,80,-110,100)
TITLE -130 90  #~
MODEL 101
PROP                                                                                                                                    
REC(0,5,0,0, )
VIS 0
PIN(-145,90,0.000,0.000)in
PIN(-110,90,0.003,0.002)out
LIG(-145,90,-135,90)
LIG(-135,80,-135,100)
LIG(-135,80,-120,90)
LIG(-135,100,-120,90)
LIG(-118,90,-118,90)
LIG(-116,90,-110,90)
VLG not not1(out,in);
FSYM
SYM  #VSMfullAdder
BB(60,-95,100,-55)
TITLE 70 -102  #VSM-fullAdder
MODEL 6000
PROP                                                                                                                                    
REC(65,-90,30,30,r)
VIS 5
PIN(60,-65,0.000,0.000)C
PIN(60,-75,0.000,0.000)B
PIN(60,-85,0.000,0.000)A
PIN(100,-75,0.006,0.003)Carry
PIN(100,-85,0.003,0.003)Sum
LIG(60,-65,65,-65)
LIG(60,-75,65,-75)
LIG(60,-85,65,-85)
LIG(95,-75,100,-75)
LIG(95,-85,100,-85)
LIG(65,-90,65,-60)
LIG(65,-90,95,-90)
LIG(95,-90,95,-60)
LIG(95,-60,65,-60)
VLG module VSMfullAdder( C,B,A,Carry,Sum);
VLG input C,B,A;
VLG output Carry,Sum;
VLG wire w7;
VLG assign Carry=(A&B)|(C&(A|B))
VLG xor #(2) xor2_1(w7,A,B);
VLG xor #(2) xor2_2(Sum,w7,C);
VLG endmodule
FSYM
CNC(205 -25)
CNC(205 40)
CNC(-145 10)
CNC(170 -110)
CNC(-145 45)
CNC(-145 80)
CNC(-145 115)
CNC(-40 65)
CNC(-40 100)
CNC(-40 135)
CNC(-40 155)
LIG(250,120,250,-90)
LIG(190,120,250,120)
LIG(245,55,245,-85)
LIG(190,55,245,55)
LIG(240,-10,240,-85)
LIG(190,-10,240,-10)
LIG(235,-75,235,-85)
LIG(190,-75,235,-75)
LIG(205,-25,205,40)
LIG(205,-110,205,-25)
LIG(-145,10,-145,20)
LIG(-200,10,-145,10)
LIG(-145,10,-85,10)
LIG(170,-25,205,-25)
LIG(205,40,205,105)
LIG(170,40,205,40)
LIG(170,105,205,105)
LIG(170,-110,205,-110)
LIG(-240,-110,170,-110)
LIG(170,-110,170,-90)
LIG(155,110,155,120)
LIG(-200,20,-155,20)
LIG(-155,20,-155,45)
LIG(100,110,155,110)
LIG(-145,45,-145,55)
LIG(-155,45,-145,45)
LIG(-145,45,-85,45)
LIG(-200,30,-165,30)
LIG(-165,30,-165,80)
LIG(155,45,155,55)
LIG(-145,80,-145,90)
LIG(-165,80,-145,80)
LIG(-145,80,-85,80)
LIG(-200,40,-175,40)
LIG(-175,40,-175,115)
LIG(100,45,155,45)
LIG(-145,115,-145,125)
LIG(-175,115,-145,115)
LIG(-145,115,-85,115)
LIG(-110,20,-85,20)
LIG(-110,55,-85,55)
LIG(-110,90,-85,90)
LIG(-110,125,-85,125)
LIG(-75,30,-40,30)
LIG(155,-20,155,-10)
LIG(-75,65,-40,65)
LIG(-40,30,-40,65)
LIG(100,-20,155,-20)
LIG(155,-85,155,-75)
LIG(-75,100,-40,100)
LIG(-40,65,-40,100)
LIG(100,-85,155,-85)
LIG(-75,135,-40,135)
LIG(-40,100,-40,135)
LIG(-40,135,-40,155)
LIG(-240,155,-40,155)
LIG(-40,155,-40,165)
LIG(-40,165,5,165)
LIG(-5,155,-5,200)
LIG(-5,200,-20,200)
LIG(125,-75,125,-125)
LIG(100,-75,125,-75)
LIG(-5,145,-20,145)
LIG(100,55,125,55)
LIG(125,10,125,55)
LIG(60,10,125,10)
LIG(60,0,60,10)
LIG(125,-55,125,-10)
LIG(60,-55,125,-55)
LIG(60,-65,60,-55)
LIG(100,-10,125,-10)
LIG(100,120,125,120)
LIG(125,75,125,120)
LIG(60,75,125,75)
LIG(-200,-90,50,-90)
LIG(50,-90,50,-85)
LIG(50,-85,60,-85)
LIG(-200,-80,45,-80)
LIG(45,-80,45,-20)
LIG(45,-20,60,-20)
LIG(-200,-70,35,-70)
LIG(35,-70,35,45)
LIG(60,65,60,75)
LIG(50,130,60,130)
LIG(50,150,50,130)
LIG(35,45,60,45)
LIG(-200,-60,25,-60)
LIG(15,150,50,150)
LIG(-65,120,60,120)
LIG(25,-60,25,110)
LIG(25,110,60,110)
LIG(-65,15,10,15)
LIG(10,15,10,-75)
LIG(10,-75,60,-75)
LIG(-65,50,0,50)
LIG(0,50,0,-10)
LIG(0,-10,75,-10)
LIG(-10,55,60,55)
LIG(-10,85,-10,55)
LIG(-65,85,-10,85)
FFIG C:\Facultate\Anul 4\Semestrul II\VLSI\proiectVLSI\VSM-ArithmeticUnit_in-progress.sch
