DSCH3
VERSION 5/24/2009 9:09:06 PM
BB(-155,55,399,305)
SYM  #clock
BB(-150,227,-135,233)
TITLE -145 230  #clock1
MODEL 69
PROP   10.000 10.000                                                                                                                                
REC(-148,228,6,4,r)
VIS 1
PIN(-135,230,1.500,0.070)Main Clock
LIG(-140,230,-135,230)
LIG(-145,228,-147,228)
LIG(-141,228,-143,228)
LIG(-140,227,-140,233)
LIG(-150,233,-150,227)
LIG(-145,232,-145,228)
LIG(-143,228,-143,232)
LIG(-143,232,-145,232)
LIG(-147,232,-149,232)
LIG(-147,228,-147,232)
LIG(-140,233,-150,233)
LIG(-140,227,-150,227)
FSYM
SYM  #light
BB(393,250,399,264)
TITLE 395 264  #AluB2
MODEL 49
PROP                                                                                                                                    
REC(394,251,4,4,r)
VIS 1
PIN(395,265,0.000,0.000)AluB2
LIG(398,256,398,251)
LIG(398,251,397,250)
LIG(394,251,394,256)
LIG(397,261,397,258)
LIG(396,261,399,261)
LIG(396,263,398,261)
LIG(397,263,399,261)
LIG(393,258,399,258)
LIG(395,258,395,265)
LIG(393,256,393,258)
LIG(399,256,393,256)
LIG(399,258,399,256)
LIG(395,250,394,251)
LIG(397,250,395,250)
FSYM
SYM  #light
BB(393,210,399,224)
TITLE 395 224  #AluB1
MODEL 49
PROP                                                                                                                                    
REC(394,211,4,4,r)
VIS 1
PIN(395,225,0.000,0.000)AluB1
LIG(398,216,398,211)
LIG(398,211,397,210)
LIG(394,211,394,216)
LIG(397,221,397,218)
LIG(396,221,399,221)
LIG(396,223,398,221)
LIG(397,223,399,221)
LIG(393,218,399,218)
LIG(395,218,395,225)
LIG(393,216,393,218)
LIG(399,216,393,216)
LIG(399,218,399,216)
LIG(395,210,394,211)
LIG(397,210,395,210)
FSYM
SYM  #light
BB(393,175,399,189)
TITLE 395 189  #AluB0
MODEL 49
PROP                                                                                                                                    
REC(394,176,4,4,r)
VIS 1
PIN(395,190,0.000,0.000)AluB0
LIG(398,181,398,176)
LIG(398,176,397,175)
LIG(394,176,394,181)
LIG(397,186,397,183)
LIG(396,186,399,186)
LIG(396,188,398,186)
LIG(397,188,399,186)
LIG(393,183,399,183)
LIG(395,183,395,190)
LIG(393,181,393,183)
LIG(399,181,393,181)
LIG(399,183,399,181)
LIG(395,175,394,176)
LIG(397,175,395,175)
FSYM
SYM  #button
BB(-144,201,-135,209)
TITLE -140 205  #LatchB
MODEL 59
PROP                                                                                                                                    
REC(-143,202,6,6,r)
VIS 1
PIN(-135,205,0.000,0.000)LatchB
LIG(-136,205,-135,205)
LIG(-144,209,-144,201)
LIG(-136,209,-144,209)
LIG(-136,201,-136,209)
LIG(-144,201,-136,201)
LIG(-143,208,-143,202)
LIG(-137,208,-143,208)
LIG(-137,202,-137,208)
LIG(-143,202,-137,202)
FSYM
SYM  #and2
BB(-100,200,-65,220)
TITLE -88 211  #&
MODEL 402
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(-100,215,0.000,0.000)b
PIN(-100,205,0.000,0.000)a
PIN(-65,210,0.090,0.280)s
LIG(-100,215,-92,215)
LIG(-92,200,-92,220)
LIG(-72,210,-65,210)
LIG(-73,212,-76,216)
LIG(-72,210,-73,212)
LIG(-73,208,-72,210)
LIG(-76,204,-73,208)
LIG(-81,201,-76,204)
LIG(-76,216,-81,219)
LIG(-81,219,-92,220)
LIG(-92,200,-81,201)
LIG(-100,205,-92,205)
VLG   and and2(out,a,b);
FSYM
SYM  #button
BB(-139,156,-130,164)
TITLE -135 160  #ClearB
MODEL 59
PROP                                                                                                                                    
REC(-138,157,6,6,r)
VIS 1
PIN(-130,160,0.000,0.000)ClearB
LIG(-131,160,-130,160)
LIG(-139,164,-139,156)
LIG(-131,164,-139,164)
LIG(-131,156,-131,164)
LIG(-139,156,-131,156)
LIG(-138,163,-138,157)
LIG(-132,163,-138,163)
LIG(-132,157,-132,163)
LIG(-138,157,-132,157)
FSYM
SYM  #inv
BB(-85,150,-50,170)
TITLE -70 160  #~
MODEL 101
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(-85,160,0.000,0.000)in
PIN(-50,160,0.030,0.280)out
LIG(-85,160,-75,160)
LIG(-75,150,-75,170)
LIG(-75,150,-60,160)
LIG(-75,170,-60,160)
LIG(-58,160,-58,160)
LIG(-56,160,-50,160)
VLG   not not1(out,in);
FSYM
SYM  #dreg
BB(265,120,295,145)
TITLE 277 128  #dreg2
MODEL 860
PROP                                                                                                                                    
REC(240,110,0,0,r)
VIS 5
PIN(265,125,0.000,0.000)D
PIN(265,135,0.000,0.000)RST
PIN(280,145,0.000,0.000)H
PIN(295,135,0.120,0.070)Q
PIN(295,125,0.120,0.000)nQ
LIG(265,135,270,135)
LIG(265,125,270,125)
LIG(280,145,280,144)
LIG(280,142,280,142)
LIG(290,135,295,135)
LIG(290,125,295,125)
LIG(290,140,270,140)
LIG(290,120,290,140)
LIG(270,120,290,120)
LIG(270,140,270,120)
LIG(279,140,280,138)
LIG(280,138,281,140)
VLG      module dreg(D,RST,H,Q,nQ);
VLG       input D,RST,H;
VLG       output Q,nQ;
VLG      endmodule
FSYM
SYM  #light
BB(393,290,399,304)
TITLE 395 304  #AluB3
MODEL 49
PROP                                                                                                                                    
REC(394,291,4,4,r)
VIS 1
PIN(395,305,0.000,0.000)AluB3
LIG(398,296,398,291)
LIG(398,291,397,290)
LIG(394,291,394,296)
LIG(397,301,397,298)
LIG(396,301,399,301)
LIG(396,303,398,301)
LIG(397,303,399,301)
LIG(393,298,399,298)
LIG(395,298,395,305)
LIG(393,296,393,298)
LIG(399,296,393,296)
LIG(399,298,399,296)
LIG(395,290,394,291)
LIG(397,290,395,290)
FSYM
SYM  #dreg
BB(185,120,215,145)
TITLE 197 128  #dreg4
MODEL 860
PROP                                                                                                                                    
REC(160,110,0,0,r)
VIS 5
PIN(185,125,0.000,0.000)D
PIN(185,135,0.000,0.000)RST
PIN(200,145,0.000,0.000)H
PIN(215,135,0.120,0.070)Q
PIN(215,125,0.120,0.000)nQ
LIG(185,135,190,135)
LIG(185,125,190,125)
LIG(200,145,200,144)
LIG(200,142,200,142)
LIG(210,135,215,135)
LIG(210,125,215,125)
LIG(210,140,190,140)
LIG(210,120,210,140)
LIG(190,120,210,120)
LIG(190,140,190,120)
LIG(199,140,200,138)
LIG(200,138,201,140)
VLG      module dreg(D,RST,H,Q,nQ);
VLG       input D,RST,H;
VLG       output Q,nQ;
VLG      endmodule
FSYM
SYM  #dreg
BB(95,120,125,145)
TITLE 107 128  #dreg4
MODEL 860
PROP                                                                                                                                    
REC(70,110,0,0,r)
VIS 5
PIN(95,125,0.000,0.000)D
PIN(95,135,0.000,0.000)RST
PIN(110,145,0.000,0.000)H
PIN(125,135,0.120,0.070)Q
PIN(125,125,0.120,0.000)nQ
LIG(95,135,100,135)
LIG(95,125,100,125)
LIG(110,145,110,144)
LIG(110,142,110,142)
LIG(120,135,125,135)
LIG(120,125,125,125)
LIG(120,140,100,140)
LIG(120,120,120,140)
LIG(100,120,120,120)
LIG(100,140,100,120)
LIG(109,140,110,138)
LIG(110,138,111,140)
VLG      module dreg(D,RST,H,Q,nQ);
VLG       input D,RST,H;
VLG       output Q,nQ;
VLG      endmodule
FSYM
SYM  #dreg
BB(5,120,35,145)
TITLE 17 128  #dreg4
MODEL 860
PROP                                                                                                                                    
REC(-20,110,0,0,r)
VIS 5
PIN(5,125,0.000,0.000)D
PIN(5,135,0.000,0.000)RST
PIN(20,145,0.000,0.000)H
PIN(35,135,0.120,0.070)Q
PIN(35,125,0.120,0.000)nQ
LIG(5,135,10,135)
LIG(5,125,10,125)
LIG(20,145,20,144)
LIG(20,142,20,142)
LIG(30,135,35,135)
LIG(30,125,35,125)
LIG(30,140,10,140)
LIG(30,120,30,140)
LIG(10,120,30,120)
LIG(10,140,10,120)
LIG(19,140,20,138)
LIG(20,138,21,140)
VLG      module dreg(D,RST,H,Q,nQ);
VLG       input D,RST,H;
VLG       output Q,nQ;
VLG      endmodule
FSYM
SYM  #kbd
BB(-155,55,-105,95)
TITLE -155 97  #B
MODEL 85
PROP                                                                                                                                    
REC(-155,55,40,40,r)
VIS 4
PIN(-105,90,0.000,0.000)B0
PIN(-105,80,0.000,0.000)B1
PIN(-105,70,0.000,0.000)B2
PIN(-105,60,0.000,0.000)B3
LIG(-115,55,-115,95)
LIG(-155,55,-115,55)
LIG(-155,55,-155,95)
LIG(-121,60,-121,63)
LIG(-155,75,-115,75)
LIG(-135,55,-135,95)
LIG(-145,95,-145,55)
LIG(-155,65,-115,65)
LIG(-125,55,-125,95)
LIG(-155,85,-115,85)
LIG(-115,90,-105,90)
LIG(-105,80,-115,80)
LIG(-115,70,-105,70)
LIG(-105,60,-115,60)
LIG(-151,93,-151,87)
LIG(-151,87,-149,87)
LIG(-149,87,-149,93)
LIG(-149,93,-151,93)
LIG(-139,93,-139,87)
LIG(-131,87,-129,87)
LIG(-129,87,-129,89)
LIG(-129,89,-131,89)
LIG(-131,89,-131,93)
LIG(-131,93,-129,93)
LIG(-121,93,-119,93)
LIG(-119,87,-121,87)
LIG(-119,87,-119,93)
LIG(-121,89,-119,89)
LIG(-151,77,-151,81)
LIG(-151,81,-149,81)
LIG(-149,77,-149,83)
LIG(-139,77,-141,77)
LIG(-141,77,-141,79)
LIG(-141,79,-139,79)
LIG(-139,79,-139,83)
LIG(-139,83,-141,83)
LIG(-131,77,-131,83)
LIG(-131,83,-129,83)
LIG(-129,83,-129,79)
LIG(-129,79,-131,79)
LIG(-121,77,-119,77)
LIG(-119,77,-119,83)
LIG(-151,67,-151,73)
LIG(-151,67,-149,67)
LIG(-149,67,-149,73)
LIG(-149,73,-151,73)
LIG(-151,69,-149,69)
LIG(-121,60,-119,60)
LIG(-155,95,-115,95)
LIG(-141,67,-139,67)
LIG(-121,57,-121,60)
LIG(-132,63,-132,60)
LIG(-132,57,-129,57)
LIG(-141,57,-141,63)
LIG(-152,63,-152,57)
LIG(-152,57,-149,57)
LIG(-122,67,-119,67)
LIG(-119,67,-118,68)
LIG(-118,68,-119,69)
LIG(-122,69,-119,69)
LIG(-122,73,-122,69)
LIG(-141,69,-139,69)
LIG(-152,63,-149,63)
LIG(-141,67,-141,69)
LIG(-139,69,-139,73)
LIG(-139,67,-139,69)
LIG(-139,73,-141,73)
LIG(-132,63,-129,63)
LIG(-132,73,-130,67)
LIG(-130,67,-128,73)
LIG(-122,69,-122,67)
LIG(-119,69,-118,70)
LIG(-121,57,-118,57)
LIG(-118,70,-118,72)
LIG(-132,71,-128,71)
LIG(-138,62,-139,63)
LIG(-118,72,-119,73)
LIG(-132,60,-132,57)
LIG(-132,60,-130,60)
LIG(-138,58,-138,62)
LIG(-139,57,-138,58)
LIG(-142,63,-141,63)
LIG(-142,57,-141,57)
LIG(-122,73,-119,73)
LIG(-141,57,-139,57)
LIG(-141,63,-139,63)
FSYM
CNC(20 180)
CNC(110 180)
CNC(200 180)
CNC(5 160)
CNC(185 160)
CNC(95 160)
LIG(-135,205,-100,205)
LIG(-130,160,-85,160)
LIG(-115,215,-100,215)
LIG(185,135,185,160)
LIG(-65,210,20,210)
LIG(5,135,5,160)
LIG(5,160,95,160)
LIG(110,180,200,180)
LIG(265,160,265,135)
LIG(95,160,185,160)
LIG(295,305,395,305)
LIG(-50,160,5,160)
LIG(20,180,110,180)
LIG(-115,215,-115,230)
LIG(20,180,20,210)
LIG(110,145,110,180)
LIG(200,180,280,180)
LIG(20,145,20,180)
LIG(95,135,95,160)
LIG(200,145,200,180)
LIG(280,145,280,180)
LIG(185,160,265,160)
LIG(-135,230,-115,230)
LIG(35,190,35,135)
LIG(395,190,35,190)
LIG(265,60,265,125)
LIG(-105,60,265,60)
LIG(-105,90,5,90)
LIG(185,70,185,125)
LIG(-105,70,185,70)
LIG(95,80,95,125)
LIG(5,90,5,125)
LIG(-105,80,95,80)
LIG(395,225,125,225)
LIG(125,225,125,135)
LIG(215,135,215,265)
LIG(215,265,395,265)
LIG(295,135,295,305)
FFIG C:\vlsi-tema curs\accumulatorB.sch
