DSCH 3.5
VERSION 05/05/2022 23:48:43
BB(-39,-40,79,80)
SYM  #light
BB(73,0,79,14)
TITLE 75 14  #light1
MODEL 49
PROP                                                                                                                                    
REC(74,1,4,4,r)
VIS 1
PIN(75,15,0.000,0.000)out1
LIG(78,6,78,1)
LIG(78,1,77,0)
LIG(74,1,74,6)
LIG(77,11,77,8)
LIG(76,11,79,11)
LIG(76,13,78,11)
LIG(77,13,79,11)
LIG(73,8,79,8)
LIG(75,8,75,15)
LIG(73,6,73,8)
LIG(79,6,73,6)
LIG(79,8,79,6)
LIG(75,0,74,1)
LIG(77,0,75,0)
FSYM
SYM  #nmos
BB(40,15,60,35)
TITLE 55 20  #nmos_1
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                               
REC(41,20,19,15,r)
VIS 0
PIN(60,35,0.000,0.000)s
PIN(40,25,0.000,0.000)g
PIN(60,15,0.005,0.006)d
LIG(50,25,40,25)
LIG(50,31,50,19)
LIG(52,31,52,19)
LIG(60,19,52,19)
LIG(60,15,60,19)
LIG(60,31,52,31)
LIG(60,35,60,31)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(25,70,35,80)
TITLE 28 74  #vdd
MODEL 1
PROP                                                                                                                                    
REC(5,125,0,0, )
VIS 0
PIN(30,70,0.000,0.000)vdd
LIG(30,70,30,75)
LIG(30,75,25,75)
LIG(25,75,30,80)
LIG(30,80,35,75)
LIG(35,75,30,75)
FSYM
SYM  #nmos
BB(-5,50,15,70)
TITLE 10 55  #nmos_2
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                               
REC(-4,55,19,15,r)
VIS 0
PIN(15,70,0.000,0.000)s
PIN(-5,60,0.000,0.000)g
PIN(15,50,0.005,0.006)d
LIG(5,60,-5,60)
LIG(5,66,5,54)
LIG(7,66,7,54)
LIG(15,54,7,54)
LIG(15,50,15,54)
LIG(15,66,7,66)
LIG(15,70,15,66)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #button
BB(-39,-24,-30,-16)
TITLE -35 -20  #button1
MODEL 59
PROP                                                                                                                                    
REC(-38,-23,6,6,r)
VIS 1
PIN(-30,-20,0.000,0.000)in1
LIG(-31,-20,-30,-20)
LIG(-39,-16,-39,-24)
LIG(-31,-16,-39,-16)
LIG(-31,-24,-31,-16)
LIG(-39,-24,-31,-24)
LIG(-38,-17,-38,-23)
LIG(-32,-17,-38,-17)
LIG(-32,-23,-32,-17)
LIG(-38,-23,-32,-23)
FSYM
SYM  #button
BB(-14,-4,-5,4)
TITLE -10 0  #button2
MODEL 59
PROP                                                                                                                                    
REC(-13,-3,6,6,r)
VIS 1
PIN(-5,0,0.000,0.000)in2
LIG(-6,0,-5,0)
LIG(-14,4,-14,-4)
LIG(-6,4,-14,4)
LIG(-6,-4,-6,4)
LIG(-14,-4,-6,-4)
LIG(-13,3,-13,-3)
LIG(-7,3,-13,3)
LIG(-7,-3,-7,3)
LIG(-13,-3,-7,-3)
FSYM
SYM  #pmos
BB(10,-30,30,-10)
TITLE 25 -25  #pmos_3
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                               
REC(11,-25,19,15,r)
VIS 0
PIN(30,-30,0.000,0.000)s
PIN(10,-20,0.000,0.000)g
PIN(30,-10,0.005,0.002)d
LIG(10,-20,16,-20)
LIG(18,-20,18,-20)
LIG(20,-14,20,-26)
LIG(22,-14,22,-26)
LIG(30,-26,22,-26)
LIG(30,-30,30,-26)
LIG(30,-14,22,-14)
LIG(30,-10,30,-14)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(10,-10,30,10)
TITLE 25 -5  #pmos_4
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                               
REC(11,-5,19,15,r)
VIS 0
PIN(30,-10,0.000,0.000)s
PIN(10,0,0.000,0.000)g
PIN(30,10,0.005,0.006)d
LIG(10,0,16,0)
LIG(18,0,18,0)
LIG(20,6,20,-6)
LIG(22,6,22,-6)
LIG(30,-6,22,-6)
LIG(30,-10,30,-6)
LIG(30,6,22,6)
LIG(30,10,30,6)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #vss
BB(25,-40,35,-32)
TITLE 29 -37  #vss
MODEL 0
PROP                                                                                                                                    
REC(25,-30,0,0,b)
VIS 0
PIN(30,-30,0.000,0.000)vss
LIG(30,-30,30,-35)
LIG(25,-35,35,-35)
LIG(25,-38,27,-35)
LIG(27,-38,29,-35)
LIG(29,-38,31,-35)
LIG(31,-38,33,-35)
FSYM
CNC(0 0)
CNC(30 15)
CNC(-25 -20)
LIG(30,15,75,15)
LIG(60,35,60,70)
LIG(15,70,60,70)
LIG(10,-20,-25,-20)
LIG(10,0,0,0)
LIG(40,25,0,25)
LIG(0,0,0,25)
LIG(0,0,-5,0)
LIG(30,10,30,15)
LIG(30,50,30,15)
LIG(15,50,30,50)
LIG(-25,-20,-25,60)
LIG(-25,-20,-30,-20)
LIG(-25,60,-5,60)
FFIG C:\Users\Betina\Desktop\VLSI referat materiale\OR2.sch
