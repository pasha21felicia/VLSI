DSCH 3.5
VERSION 06/05/2022 13:21:44
BB(-269,-200,179,170)
SYM  #and2
BB(-15,65,20,85)
TITLE -3 76  #&
MODEL 402
PROP                                                                                                                                   
REC(-15,0,0,0, )
VIS 0
PIN(-15,80,0.000,0.000)b
PIN(-15,70,0.000,0.000)a
PIN(20,75,0.015,0.002)s
LIG(-15,80,-7,80)
LIG(-7,65,-7,85)
LIG(13,75,20,75)
LIG(12,77,9,81)
LIG(13,75,12,77)
LIG(12,73,13,75)
LIG(9,69,12,73)
LIG(4,66,9,69)
LIG(9,81,4,84)
LIG(4,84,-7,85)
LIG(-7,65,4,66)
LIG(-15,70,-7,70)
VLG and and2(out,a,b);
FSYM
SYM  #and2
BB(-15,5,20,25)
TITLE -3 16  #&
MODEL 402
PROP                                                                                                                                   
REC(-10,-25,0,0, )
VIS 0
PIN(-15,20,0.000,0.000)b
PIN(-15,10,0.000,0.000)a
PIN(20,15,0.015,0.002)s
LIG(-15,20,-7,20)
LIG(-7,5,-7,25)
LIG(13,15,20,15)
LIG(12,17,9,21)
LIG(13,15,12,17)
LIG(12,13,13,15)
LIG(9,9,12,13)
LIG(4,6,9,9)
LIG(9,21,4,24)
LIG(4,24,-7,25)
LIG(-7,5,4,6)
LIG(-15,10,-7,10)
VLG and and2(out,a,b);
FSYM
SYM  #and3
BB(-15,-40,20,-10)
TITLE 0 -25  #&
MODEL 403
PROP                                                                                                                                   
REC(-15,-40,0,0,P)
VIS 0
PIN(-15,-35,0.000,0.000)a
PIN(-15,-25,0.000,0.000)b
PIN(-15,-15,0.000,0.000)c
PIN(25,-25,0.015,0.002)s
LIG(25,-25,15,-25)
LIG(-15,-15,-5,-15)
LIG(-15,-25,-5,-25)
LIG(-15,-35,-5,-35)
LIG(-5,-25,-5,-10)
LIG(10,-14,5,-11)
LIG(14,-22,10,-14)
LIG(-5,-40,-5,-25)
LIG(-5,-40,5,-39)
LIG(15,-25,14,-22)
LIG(14,-28,15,-25)
LIG(-5,-10,5,-11)
LIG(10,-36,14,-28)
LIG(5,-39,10,-36)
VLG and and3(s,a,b,c);
FSYM
SYM  #and2
BB(-10,-105,25,-85)
TITLE 2 -94  #&
MODEL 402
PROP                                                                                                                                   
REC(0,-55,0,0, )
VIS 0
PIN(-10,-90,0.000,0.000)b
PIN(-10,-100,0.000,0.000)a
PIN(25,-95,0.015,0.002)s
LIG(-10,-90,-2,-90)
LIG(-2,-105,-2,-85)
LIG(18,-95,25,-95)
LIG(17,-93,14,-89)
LIG(18,-95,17,-93)
LIG(17,-97,18,-95)
LIG(14,-101,17,-97)
LIG(9,-104,14,-101)
LIG(14,-89,9,-86)
LIG(9,-86,-2,-85)
LIG(-2,-105,9,-104)
LIG(-10,-100,-2,-100)
VLG and and2(out,a,b);
FSYM
SYM  #and3
BB(-10,-150,25,-120)
TITLE 5 -135  #&
MODEL 403
PROP                                                                                                                                   
REC(-10,-150,0,0,P)
VIS 0
PIN(-10,-145,0.000,0.000)a
PIN(-10,-135,0.000,0.000)b
PIN(-10,-125,0.000,0.000)c
PIN(30,-135,0.015,0.002)s
LIG(30,-135,20,-135)
LIG(-10,-125,0,-125)
LIG(-10,-135,0,-135)
LIG(-10,-145,0,-145)
LIG(0,-135,0,-120)
LIG(15,-124,10,-121)
LIG(19,-132,15,-124)
LIG(0,-150,0,-135)
LIG(0,-150,10,-149)
LIG(20,-135,19,-132)
LIG(19,-138,20,-135)
LIG(0,-120,10,-121)
LIG(15,-146,19,-138)
LIG(10,-149,15,-146)
VLG and and3(s,a,b,c);
FSYM
SYM  #and4
BB(-15,-200,25,-165)
TITLE 0 -180  #&
MODEL 404
PROP                                                                                                                                   
REC(-15,-200,0,0,P)
VIS 4
PIN(-15,-195,0.000,0.000)a
PIN(-15,-185,0.000,0.000)b
PIN(-15,-175,0.000,0.000)c
PIN(-15,-165,0.000,0.000)d
PIN(25,-180,0.015,0.002)s
LIG(-15,-165,-5,-165)
LIG(-5,-200,-5,-160)
LIG(14,-171,10,-165)
LIG(-5,-200,5,-199)
LIG(5,-199,10,-195)
LIG(5,-161,10,-165)
LIG(-15,-195,-5,-195)
LIG(-5,-160,5,-161)
LIG(-15,-185,-5,-185)
LIG(-15,-175,-5,-175)
LIG(15,-180,14,-171)
LIG(14,-189,15,-180)
LIG(10,-195,14,-189)
LIG(15,-180,25,-180)
VLG and and4(out,a,b,c,d);
FSYM
SYM  #or4
BB(115,-160,150,-120)
TITLE 130 -130  #>=1
MODEL 504
PROP                                                                                                                                   
REC(45,-30,0,0, )
VIS 4
PIN(115,-155,0.000,0.000)a
PIN(115,-145,0.000,0.000)b
PIN(115,-135,0.000,0.000)c
PIN(115,-125,0.000,0.000)d
PIN(150,-140,0.020,0.002)s
LIG(140,-157,125,-157)
LIG(140,-123,140,-157)
LIG(125,-123,140,-123)
LIG(125,-157,125,-123)
LIG(115,-155,125,-155)
LIG(115,-145,125,-145)
LIG(115,-135,125,-135)
LIG(115,-125,125,-125)
LIG(140,-140,150,-140)
VLG or or4(s,a,b,c,d);
FSYM
SYM  #or3
BB(115,-30,155,0)
TITLE 130 -10  #|
MODEL 503
PROP                                                                                                                                   
REC(50,40,0,0, )
VIS 0
PIN(115,-25,0.000,0.000)a
PIN(115,-15,0.000,0.000)b
PIN(115,-5,0.000,0.000)c
PIN(155,-15,0.020,0.002)s
LIG(115,-5,129,-5)
LIG(115,-15,131,-15)
LIG(115,-25,129,-25)
LIG(129,-5,125,0)
LIG(140,-4,135,-1)
LIG(144,-12,140,-4)
LIG(135,-29,140,-26)
LIG(125,-30,135,-29)
LIG(145,-15,144,-12)
LIG(144,-18,145,-15)
LIG(125,0,135,-1)
LIG(140,-26,144,-18)
LIG(125,-30,129,-25)
LIG(129,-25,131,-15)
LIG(131,-15,129,-5)
LIG(145,-15,155,-15)
VLG or or3(s,a,b,c);
FSYM
SYM  #or2
BB(115,75,150,95)
TITLE 135 85  #|
MODEL 502
PROP                                                                                                                                   
REC(50,85,0,0, )
VIS 0
PIN(115,80,0.000,0.000)a
PIN(115,90,0.000,0.000)b
PIN(150,85,0.015,0.002)s
LIG(115,90,128,90)
LIG(127,92,123,95)
LIG(143,85,150,85)
LIG(142,87,139,91)
LIG(143,85,142,87)
LIG(142,83,143,85)
LIG(139,79,142,83)
LIG(134,76,139,79)
LIG(139,91,134,94)
LIG(134,94,123,95)
LIG(123,75,134,76)
LIG(129,88,127,92)
LIG(123,75,127,78)
LIG(127,78,129,82)
LIG(129,82,130,85)
LIG(130,85,129,88)
LIG(115,80,128,80)
VLG or or2(s,a,b);
FSYM
SYM  #light
BB(168,-155,174,-141)
TITLE 170 -141  #C4
MODEL 49
PROP                                                                                                                                   
REC(169,-154,4,4,r)
VIS 1
PIN(170,-140,0.000,0.000)C4
LIG(173,-149,173,-154)
LIG(173,-154,172,-155)
LIG(169,-154,169,-149)
LIG(172,-144,172,-147)
LIG(171,-144,174,-144)
LIG(171,-142,173,-144)
LIG(172,-142,174,-144)
LIG(168,-147,174,-147)
LIG(170,-147,170,-140)
LIG(168,-149,168,-147)
LIG(174,-149,168,-149)
LIG(174,-147,174,-149)
LIG(170,-155,169,-154)
LIG(172,-155,170,-155)
FSYM
SYM  #light
BB(173,-30,179,-16)
TITLE 175 -16  #C3
MODEL 49
PROP                                                                                                                                   
REC(174,-29,4,4,r)
VIS 1
PIN(175,-15,0.000,0.000)C3
LIG(178,-24,178,-29)
LIG(178,-29,177,-30)
LIG(174,-29,174,-24)
LIG(177,-19,177,-22)
LIG(176,-19,179,-19)
LIG(176,-17,178,-19)
LIG(177,-17,179,-19)
LIG(173,-22,179,-22)
LIG(175,-22,175,-15)
LIG(173,-24,173,-22)
LIG(179,-24,173,-24)
LIG(179,-22,179,-24)
LIG(175,-30,174,-29)
LIG(177,-30,175,-30)
FSYM
SYM  #light
BB(173,70,179,84)
TITLE 175 84  #C2
MODEL 49
PROP                                                                                                                                   
REC(174,71,4,4,r)
VIS 1
PIN(175,85,0.000,0.000)C2
LIG(178,76,178,71)
LIG(178,71,177,70)
LIG(174,71,174,76)
LIG(177,81,177,78)
LIG(176,81,179,81)
LIG(176,83,178,81)
LIG(177,83,179,81)
LIG(173,78,179,78)
LIG(175,78,175,85)
LIG(173,76,173,78)
LIG(179,76,173,76)
LIG(179,78,179,76)
LIG(175,70,174,71)
LIG(177,70,175,70)
FSYM
SYM  #button
BB(-264,-64,-255,-56)
TITLE -260 -60  #G3
MODEL 59
PROP                                                                                                                                   
REC(-263,-63,6,6,r)
VIS 1
PIN(-255,-60,0.000,0.000)G3
LIG(-256,-60,-255,-60)
LIG(-264,-56,-264,-64)
LIG(-256,-56,-264,-56)
LIG(-256,-64,-256,-56)
LIG(-264,-64,-256,-64)
LIG(-263,-57,-263,-63)
LIG(-257,-57,-263,-57)
LIG(-257,-63,-257,-57)
LIG(-263,-63,-257,-63)
FSYM
SYM  #button
BB(-264,-94,-255,-86)
TITLE -260 -90  #P3
MODEL 59
PROP                                                                                                                                   
REC(-263,-93,6,6,r)
VIS 1
PIN(-255,-90,0.000,0.000)P3
LIG(-256,-90,-255,-90)
LIG(-264,-86,-264,-94)
LIG(-256,-86,-264,-86)
LIG(-256,-94,-256,-86)
LIG(-264,-94,-256,-94)
LIG(-263,-87,-263,-93)
LIG(-257,-87,-263,-87)
LIG(-257,-93,-257,-87)
LIG(-263,-93,-257,-93)
FSYM
SYM  #light
BB(-42,156,-36,170)
TITLE -40 156  #C1
MODEL 49
PROP                                                                                                                                   
REC(-41,165,4,4,r)
VIS 1
PIN(-40,155,0.000,0.000)C1
LIG(-37,164,-37,169)
LIG(-37,169,-38,170)
LIG(-41,169,-41,164)
LIG(-38,159,-38,162)
LIG(-39,159,-36,159)
LIG(-39,157,-37,159)
LIG(-38,157,-36,159)
LIG(-42,162,-36,162)
LIG(-40,162,-40,155)
LIG(-42,164,-42,162)
LIG(-36,164,-42,164)
LIG(-36,162,-36,164)
LIG(-40,170,-41,169)
LIG(-38,170,-40,170)
FSYM
SYM  #button
BB(-269,16,-260,24)
TITLE -265 20  #P2
MODEL 59
PROP                                                                                                                                   
REC(-268,17,6,6,r)
VIS 1
PIN(-260,20,0.000,0.000)P2
LIG(-261,20,-260,20)
LIG(-269,24,-269,16)
LIG(-261,24,-269,24)
LIG(-261,16,-261,24)
LIG(-269,16,-261,16)
LIG(-268,23,-268,17)
LIG(-262,23,-268,23)
LIG(-262,17,-262,23)
LIG(-268,17,-262,17)
FSYM
SYM  #button
BB(-269,31,-260,39)
TITLE -265 35  #G2
MODEL 59
PROP                                                                                                                                   
REC(-268,32,6,6,r)
VIS 1
PIN(-260,35,0.000,0.000)G2
LIG(-261,35,-260,35)
LIG(-269,39,-269,31)
LIG(-261,39,-269,39)
LIG(-261,31,-261,39)
LIG(-269,31,-261,31)
LIG(-268,38,-268,32)
LIG(-262,38,-268,38)
LIG(-262,32,-262,38)
LIG(-268,32,-262,32)
FSYM
SYM  #button
BB(-269,86,-260,94)
TITLE -265 90  #G1
MODEL 59
PROP                                                                                                                                   
REC(-268,87,6,6,r)
VIS 1
PIN(-260,90,0.000,0.000)G1
LIG(-261,90,-260,90)
LIG(-269,94,-269,86)
LIG(-261,94,-269,94)
LIG(-261,86,-261,94)
LIG(-269,86,-261,86)
LIG(-268,93,-268,87)
LIG(-262,93,-268,93)
LIG(-262,87,-262,93)
LIG(-268,87,-262,87)
FSYM
SYM  #button
BB(-269,76,-260,84)
TITLE -265 80  #P1
MODEL 59
PROP                                                                                                                                   
REC(-268,77,6,6,r)
VIS 1
PIN(-260,80,0.000,0.000)P1
LIG(-261,80,-260,80)
LIG(-269,84,-269,76)
LIG(-261,84,-269,84)
LIG(-261,76,-261,84)
LIG(-269,76,-261,76)
LIG(-268,83,-268,77)
LIG(-262,83,-268,83)
LIG(-262,77,-262,83)
LIG(-268,77,-262,77)
FSYM
CNC(-40 -35)
CNC(-40 70)
CNC(-40 70)
CNC(-80 35)
CNC(-65 90)
CNC(-65 10)
CNC(-235 80)
CNC(-235 -25)
CNC(-215 20)
CNC(-215 -135)
CNC(-215 -15)
CNC(-190 -90)
CNC(-190 -125)
LIG(170,-140,150,-140)
LIG(175,-15,155,-15)
LIG(175,85,150,85)
LIG(20,75,90,75)
LIG(90,75,90,80)
LIG(90,80,115,80)
LIG(-260,90,-65,90)
LIG(115,-155,55,-155)
LIG(55,-155,55,-180)
LIG(55,-180,25,-180)
LIG(30,-135,55,-135)
LIG(55,-135,55,-145)
LIG(55,-145,115,-145)
LIG(25,-95,65,-95)
LIG(65,-95,65,-135)
LIG(65,-135,115,-135)
LIG(115,-125,80,-125)
LIG(80,-125,80,-60)
LIG(-255,-60,80,-60)
LIG(-15,-195,-40,-195)
LIG(-40,-195,-40,-35)
LIG(-15,-35,-40,-35)
LIG(-40,-35,-40,70)
LIG(-15,70,-40,70)
LIG(-40,70,-40,170)
LIG(-15,-185,-235,-185)
LIG(-235,-185,-235,-25)
LIG(25,-25,115,-25)
LIG(40,15,20,15)
LIG(115,-15,40,-15)
LIG(40,-15,40,15)
LIG(115,-5,110,-5)
LIG(-260,35,-80,35)
LIG(110,35,110,-5)
LIG(-10,-100,-80,-100)
LIG(-80,-100,-80,35)
LIG(-80,35,110,35)
LIG(-255,-90,-190,-90)
LIG(-10,-145,-65,-145)
LIG(-65,-145,-65,10)
LIG(-65,90,115,90)
LIG(-15,10,-65,10)
LIG(-65,10,-65,90)
LIG(-260,80,-235,80)
LIG(-235,80,-15,80)
LIG(-15,-25,-235,-25)
LIG(-235,-25,-235,80)
LIG(-15,20,-215,20)
LIG(-15,-175,-215,-175)
LIG(-215,-175,-215,-135)
LIG(-215,20,-260,20)
LIG(-10,-135,-215,-135)
LIG(-215,-135,-215,-15)
LIG(-15,-15,-215,-15)
LIG(-215,-15,-215,20)
LIG(-15,-165,-190,-165)
LIG(-190,-165,-190,-125)
LIG(-190,-90,-10,-90)
LIG(-10,-125,-190,-125)
LIG(-190,-125,-190,-90)
FFIG C:\Users\Betina\Desktop\Scheme VLSI\adder_CLA_4bit.sch
