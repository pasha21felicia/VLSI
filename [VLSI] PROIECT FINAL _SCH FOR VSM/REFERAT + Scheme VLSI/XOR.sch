DSCH 3.5
VERSION 06/05/2022 00:11:50
BB(-94,-20,64,55)
SYM  #light
BB(58,-5,64,9)
TITLE 60 9  #light1
MODEL 49
PROP                                                                                                                                   
REC(59,-4,4,4,r)
VIS 1
PIN(60,10,0.000,0.000)out1
LIG(63,1,63,-4)
LIG(63,-4,62,-5)
LIG(59,-4,59,1)
LIG(62,6,62,3)
LIG(61,6,64,6)
LIG(61,8,63,6)
LIG(62,8,64,6)
LIG(58,3,64,3)
LIG(60,3,60,10)
LIG(58,1,58,3)
LIG(64,1,58,1)
LIG(64,3,64,1)
LIG(60,-5,59,-4)
LIG(62,-5,60,-5)
FSYM
SYM  #pmos
BB(25,-10,45,10)
TITLE 40 -5  #pmos_1
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(26,-5,19,15,r)
VIS 0
PIN(45,-10,0.000,0.000)s
PIN(25,0,0.000,0.000)g
PIN(45,10,0.005,0.004)d
LIG(25,0,31,0)
LIG(33,0,33,0)
LIG(35,6,35,-6)
LIG(37,6,37,-6)
LIG(45,-6,37,-6)
LIG(45,-10,45,-6)
LIG(45,6,37,6)
LIG(45,10,45,6)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(25,10,45,30)
TITLE 40 15  #nmos_2
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(26,15,19,15,r)
VIS 0
PIN(45,30,0.000,0.000)s
PIN(25,20,0.000,0.000)g
PIN(45,10,0.005,0.004)d
LIG(35,20,25,20)
LIG(35,26,35,14)
LIG(37,26,37,14)
LIG(45,14,37,14)
LIG(45,10,45,14)
LIG(45,26,37,26)
LIG(45,30,45,26)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(40,-20,50,-10)
TITLE 43 -14  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(45,-10,0.000,0.000)vdd
LIG(45,-10,45,-15)
LIG(45,-15,40,-15)
LIG(40,-15,45,-20)
LIG(45,-20,50,-15)
LIG(50,-15,45,-15)
FSYM
SYM  #vss
BB(40,32,50,40)
TITLE 44 37  #vss
MODEL 0
PROP                                                                                                                                    
REC(40,30,0,0,b)
VIS 0
PIN(45,30,0.000,0.000)vss
LIG(45,30,45,35)
LIG(40,35,50,35)
LIG(40,38,42,35)
LIG(42,38,44,35)
LIG(44,38,46,35)
LIG(46,38,48,35)
FSYM
SYM  #pmos
BB(-20,-10,0,10)
TITLE -15 -5  #pmos_3
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(-15,-10,15,19,r)
VIS 0
PIN(-20,-10,0.000,0.000)s
PIN(-10,10,0.000,0.000)g
PIN(0,-10,0.005,0.006)d
LIG(-10,10,-10,4)
LIG(-10,2,-10,2)
LIG(-4,0,-16,0)
LIG(-4,-2,-16,-2)
LIG(-16,-10,-16,-2)
LIG(-20,-10,-16,-10)
LIG(-4,-10,-4,-2)
LIG(0,-10,-4,-10)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(-20,10,0,30)
TITLE -5 25  #nmos_4
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(-20,11,15,19,r)
VIS 0
PIN(-20,30,0.000,0.000)s
PIN(-10,10,0.000,0.000)g
PIN(0,30,0.005,0.006)d
LIG(-10,20,-10,10)
LIG(-16,20,-4,20)
LIG(-16,22,-4,22)
LIG(-4,30,-4,22)
LIG(0,30,-4,30)
LIG(-16,30,-16,22)
LIG(-20,30,-16,30)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(-55,32,-45,40)
TITLE -51 37  #vss
MODEL 0
PROP                                                                                                                                    
REC(-55,30,0,0,b)
VIS 0
PIN(-50,30,0.000,0.000)vss
LIG(-50,30,-50,35)
LIG(-55,35,-45,35)
LIG(-55,38,-53,35)
LIG(-53,38,-51,35)
LIG(-51,38,-49,35)
LIG(-49,38,-47,35)
FSYM
SYM  #nmos
BB(-70,10,-50,30)
TITLE -55 15  #nmos_5
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(-69,15,19,15,r)
VIS 0
PIN(-50,30,0.000,0.000)s
PIN(-70,20,0.000,0.000)g
PIN(-50,10,0.005,0.004)d
LIG(-60,20,-70,20)
LIG(-60,26,-60,14)
LIG(-58,26,-58,14)
LIG(-50,14,-58,14)
LIG(-50,10,-50,14)
LIG(-50,26,-58,26)
LIG(-50,30,-50,26)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(-70,-10,-50,10)
TITLE -55 -5  #pmos_6
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(-69,-5,19,15,r)
VIS 0
PIN(-50,-10,0.000,0.000)s
PIN(-70,0,0.000,0.000)g
PIN(-50,10,0.005,0.004)d
LIG(-70,0,-64,0)
LIG(-62,0,-62,0)
LIG(-60,6,-60,-6)
LIG(-58,6,-58,-6)
LIG(-50,-6,-58,-6)
LIG(-50,-10,-50,-6)
LIG(-50,6,-58,6)
LIG(-50,10,-50,6)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #button
BB(-94,6,-85,14)
TITLE -90 10  #button1
MODEL 59
PROP                                                                                                                                   
REC(-93,7,6,6,r)
VIS 1
PIN(-85,10,0.000,0.000)in1
LIG(-86,10,-85,10)
LIG(-94,14,-94,6)
LIG(-86,14,-94,14)
LIG(-86,6,-86,14)
LIG(-94,6,-86,6)
LIG(-93,13,-93,7)
LIG(-87,13,-93,13)
LIG(-87,7,-87,13)
LIG(-93,7,-87,7)
FSYM
SYM  #button
BB(-94,41,-85,49)
TITLE -90 45  #button2
MODEL 59
PROP                                                                                                                                   
REC(-93,42,6,6,r)
VIS 1
PIN(-85,45,0.000,0.000)in2
LIG(-86,45,-85,45)
LIG(-94,49,-94,41)
LIG(-86,49,-94,49)
LIG(-86,41,-86,49)
LIG(-94,41,-86,41)
LIG(-93,48,-93,42)
LIG(-87,48,-93,48)
LIG(-87,42,-87,48)
LIG(-93,42,-87,42)
FSYM
SYM  #vdd
BB(-55,-20,-45,-10)
TITLE -52 -14  #vdd
MODEL 1
PROP                                                                                                                                   
REC(-5,0,0,0, )
VIS 0
PIN(-50,-10,0.000,0.000)vdd
LIG(-50,-10,-50,-15)
LIG(-50,-15,-55,-15)
LIG(-55,-15,-50,-20)
LIG(-50,-20,-45,-15)
LIG(-45,-15,-50,-15)
FSYM
CNC(25 10)
CNC(0 10)
CNC(-70 10)
LIG(60,10,45,10)
LIG(25,0,25,10)
LIG(0,10,25,10)
LIG(25,10,25,20)
LIG(0,10,0,30)
LIG(-40,-10,-20,-10)
LIG(0,-10,0,10)
LIG(-20,30,-20,55)
LIG(-30,10,-30,45)
LIG(-10,10,-30,10)
LIG(-40,-10,-40,10)
LIG(-40,10,-50,10)
LIG(-70,0,-70,10)
LIG(-70,10,-85,10)
LIG(-70,10,-70,55)
LIG(-85,45,-30,45)
LIG(-20,55,-70,55)
FFIG C:\Users\Betina\Desktop\VLSI referat materiale\XOR.sch
