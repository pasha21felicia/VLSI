DSCH 3.5
VERSION 05/05/2022 21:51:59
BB(71,-15,149,55)
SYM  #light
BB(143,5,149,19)
TITLE 145 19  #light1
MODEL 49
PROP                                                                                                                                   
REC(144,6,4,4,r)
VIS 1
PIN(145,20,0.000,0.000)out1
LIG(148,11,148,6)
LIG(148,6,147,5)
LIG(144,6,144,11)
LIG(147,16,147,13)
LIG(146,16,149,16)
LIG(146,18,148,16)
LIG(147,18,149,16)
LIG(143,13,149,13)
LIG(145,13,145,20)
LIG(143,11,143,13)
LIG(149,11,143,11)
LIG(149,13,149,11)
LIG(145,5,144,6)
LIG(147,5,145,5)
FSYM
SYM  #pmos
BB(100,-5,120,15)
TITLE 115 0  #pmos_1
MODEL 902
PROP   0.5u 0.07u MP                                                                                                                              
REC(101,0,19,15,r)
VIS 0
PIN(120,-5,0.000,0.000)s
PIN(100,5,0.000,0.000)g
PIN(120,15,0.005,0.004)d
LIG(100,5,106,5)
LIG(108,5,108,5)
LIG(110,11,110,-1)
LIG(112,11,112,-1)
LIG(120,-1,112,-1)
LIG(120,-5,120,-1)
LIG(120,11,112,11)
LIG(120,15,120,11)
VLG pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(100,25,120,45)
TITLE 115 30  #nmos_2
MODEL 901
PROP   0.3u 0.07u MN                                                                                                                              
REC(101,30,19,15,r)
VIS 0
PIN(120,45,0.000,0.000)s
PIN(100,35,0.000,0.000)g
PIN(120,25,0.005,0.004)d
LIG(110,35,100,35)
LIG(110,41,110,29)
LIG(112,41,112,29)
LIG(120,29,112,29)
LIG(120,25,120,29)
LIG(120,41,112,41)
LIG(120,45,120,41)
VLG nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(115,47,125,55)
TITLE 119 52  #vss
MODEL 0
PROP                                                                                                                                    
REC(115,45,0,0,b)
VIS 0
PIN(120,45,0.000,0.000)vss
LIG(120,45,120,50)
LIG(115,50,125,50)
LIG(115,53,117,50)
LIG(117,53,119,50)
LIG(119,53,121,50)
LIG(121,53,123,50)
FSYM
SYM  #vdd
BB(115,-15,125,-5)
TITLE 118 -9  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(120,-5,0.000,0.000)vdd
LIG(120,-5,120,-10)
LIG(120,-10,115,-10)
LIG(115,-10,120,-15)
LIG(120,-15,125,-10)
LIG(125,-10,120,-10)
FSYM
SYM  #button
BB(71,16,80,24)
TITLE 75 20  #button1
MODEL 59
PROP                                                                                                                                   
REC(72,17,6,6,r)
VIS 1
PIN(80,20,0.000,0.000)in1
LIG(79,20,80,20)
LIG(71,24,71,16)
LIG(79,24,71,24)
LIG(79,16,79,24)
LIG(71,16,79,16)
LIG(72,23,72,17)
LIG(78,23,72,23)
LIG(78,17,78,23)
LIG(72,17,78,17)
FSYM
CNC(85 20)
CNC(120 20)
LIG(100,5,85,5)
LIG(85,5,85,20)
LIG(85,20,80,20)
LIG(85,20,85,35)
LIG(85,35,100,35)
LIG(120,15,120,20)
LIG(120,20,145,20)
LIG(120,20,120,25)
FFIG C:\Users\Betina\Desktop\VLSI referat materiale\inversor.sch
