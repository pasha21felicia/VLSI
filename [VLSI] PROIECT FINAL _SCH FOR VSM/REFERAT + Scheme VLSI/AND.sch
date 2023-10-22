DSCH 3.5
VERSION 05/05/2022 22:42:13
BB(-69,-50,129,65)
SYM  #button
BB(-29,1,-20,9)
TITLE -25 5  #in1
MODEL 59
PROP                                                                                                                                    
REC(-28,2,6,6,r)
VIS 1
PIN(-20,5,0.000,0.000)in1
LIG(-21,5,-20,5)
LIG(-29,9,-29,1)
LIG(-21,9,-29,9)
LIG(-21,1,-21,9)
LIG(-29,1,-21,1)
LIG(-28,8,-28,2)
LIG(-22,8,-28,8)
LIG(-22,2,-22,8)
LIG(-28,2,-22,2)
FSYM
SYM  #pmos
BB(35,-10,55,10)
TITLE 50 -5  #pmos_1
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                               
REC(36,-5,19,15,r)
VIS 0
PIN(55,-10,0.000,0.000)s
PIN(35,0,0.000,0.000)g
PIN(55,10,0.005,0.008)d
LIG(35,0,41,0)
LIG(43,0,43,0)
LIG(45,6,45,-6)
LIG(47,6,47,-6)
LIG(55,-6,47,-6)
LIG(55,-10,55,-6)
LIG(55,6,47,6)
LIG(55,10,55,6)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(80,-10,100,10)
TITLE 95 -5  #pmos_2
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                               
REC(81,-5,19,15,r)
VIS 0
PIN(100,-10,0.000,0.000)s
PIN(80,0,0.000,0.000)g
PIN(100,10,0.005,0.004)d
LIG(80,0,86,0)
LIG(88,0,88,0)
LIG(90,6,90,-6)
LIG(92,6,92,-6)
LIG(100,-6,92,-6)
LIG(100,-10,100,-6)
LIG(100,6,92,6)
LIG(100,10,100,6)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(80,20,100,40)
TITLE 95 25  #nmos_3
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                               
REC(81,25,19,15,r)
VIS 0
PIN(100,40,0.000,0.000)s
PIN(80,30,0.000,0.000)g
PIN(100,20,0.005,0.004)d
LIG(90,30,80,30)
LIG(90,36,90,24)
LIG(92,36,92,24)
LIG(100,24,92,24)
LIG(100,20,100,24)
LIG(100,36,92,36)
LIG(100,40,100,36)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #button
BB(-69,41,-60,49)
TITLE -65 45  #in2
MODEL 59
PROP                                                                                                                                    
REC(-68,42,6,6,r)
VIS 1
PIN(-60,45,0.000,0.000)in2
LIG(-61,45,-60,45)
LIG(-69,49,-69,41)
LIG(-61,49,-69,49)
LIG(-61,41,-61,49)
LIG(-69,41,-61,41)
LIG(-68,48,-68,42)
LIG(-62,48,-68,48)
LIG(-62,42,-62,48)
LIG(-68,42,-62,42)
FSYM
SYM  #nmos
BB(-5,35,15,55)
TITLE 10 40  #nmos_4
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                               
REC(-4,40,19,15,r)
VIS 0
PIN(15,55,0.000,0.000)s
PIN(-5,45,0.000,0.000)g
PIN(15,35,0.005,0.002)d
LIG(5,45,-5,45)
LIG(5,51,5,39)
LIG(7,51,7,39)
LIG(15,39,7,39)
LIG(15,35,15,39)
LIG(15,51,7,51)
LIG(15,55,15,51)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(95,-20,105,-10)
TITLE 98 -14  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(100,-10,0.000,0.000)vdd
LIG(100,-10,100,-15)
LIG(100,-15,95,-15)
LIG(95,-15,100,-20)
LIG(100,-20,105,-15)
LIG(105,-15,100,-15)
FSYM
SYM  #vdd
BB(50,-20,60,-10)
TITLE 53 -14  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(55,-10,0.000,0.000)vdd
LIG(55,-10,55,-15)
LIG(55,-15,50,-15)
LIG(50,-15,55,-20)
LIG(55,-20,60,-15)
LIG(60,-15,55,-15)
FSYM
SYM  #vdd
BB(10,-15,20,-5)
TITLE 13 -9  #vdd
MODEL 1
PROP                                                                                                                                    
REC(5,5,0,0, )
VIS 0
PIN(15,-5,0.000,0.000)vdd
LIG(15,-5,15,-10)
LIG(15,-10,10,-10)
LIG(10,-10,15,-15)
LIG(15,-15,20,-10)
LIG(20,-10,15,-10)
FSYM
SYM  #vss
BB(10,57,20,65)
TITLE 14 62  #vss
MODEL 0
PROP                                                                                                                                    
REC(10,55,0,0,b)
VIS 0
PIN(15,55,0.000,0.000)vss
LIG(15,55,15,60)
LIG(10,60,20,60)
LIG(10,63,12,60)
LIG(12,63,14,60)
LIG(14,63,16,60)
LIG(16,63,18,60)
FSYM
SYM  #vss
BB(95,42,105,50)
TITLE 99 47  #vss
MODEL 0
PROP                                                                                                                                    
REC(95,40,0,0,b)
VIS 0
PIN(100,40,0.000,0.000)vss
LIG(100,40,100,45)
LIG(95,45,105,45)
LIG(95,48,97,45)
LIG(97,48,99,45)
LIG(99,48,101,45)
LIG(101,48,103,45)
FSYM
SYM  #light
BB(123,0,129,14)
TITLE 125 14  #out1
MODEL 49
PROP                                                                                                                                    
REC(124,1,4,4,r)
VIS 1
PIN(125,15,0.000,0.000)out1
LIG(128,6,128,1)
LIG(128,1,127,0)
LIG(124,1,124,6)
LIG(127,11,127,8)
LIG(126,11,129,11)
LIG(126,13,128,11)
LIG(127,13,129,11)
LIG(123,8,129,8)
LIG(125,8,125,15)
LIG(123,6,123,8)
LIG(129,6,123,6)
LIG(129,8,129,6)
LIG(125,0,124,1)
LIG(127,0,125,0)
FSYM
SYM  #pmos
BB(-5,-5,15,15)
TITLE 10 0  #pmos_5
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                               
REC(-4,0,19,15,r)
VIS 0
PIN(15,-5,0.000,0.000)s
PIN(-5,5,0.000,0.000)g
PIN(15,15,0.005,0.008)d
LIG(-5,5,1,5)
LIG(3,5,3,5)
LIG(5,11,5,-1)
LIG(7,11,7,-1)
LIG(15,-1,7,-1)
LIG(15,-5,15,-1)
LIG(15,11,7,11)
LIG(15,15,15,11)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-5,15,15,35)
TITLE 10 20  #nmos_6
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                               
REC(-4,20,19,15,r)
VIS 0
PIN(15,35,0.000,0.000)s
PIN(-5,25,0.000,0.000)g
PIN(15,15,0.005,0.008)d
LIG(5,25,-5,25)
LIG(5,31,5,19)
LIG(7,31,7,19)
LIG(15,19,7,19)
LIG(15,15,15,19)
LIG(15,31,7,31)
LIG(15,35,15,31)
VLG nmos nmos(drain,source,gate);
FSYM
CNC(100 15)
CNC(80 15)
CNC(55 15)
CNC(-5 5)
CNC(-55 45)
LIG(35,0,30,0)
LIG(30,-50,30,0)
LIG(-20,5,-5,5)
LIG(-60,45,-55,45)
LIG(80,0,80,15)
LIG(100,10,100,15)
LIG(100,15,125,15)
LIG(100,15,100,20)
LIG(55,10,55,15)
LIG(15,15,55,15)
LIG(80,15,80,30)
LIG(55,15,80,15)
LIG(-5,25,-5,5)
LIG(-5,5,0,5)
LIG(30,-50,-55,-50)
LIG(-55,-50,-55,45)
LIG(-55,45,-5,45)
FFIG C:\Users\Betina\Desktop\VLSI referat materiale\AND.sch
