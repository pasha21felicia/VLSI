DSCH 3.5
VERSION 16/05/2022 23:52:25
BB(121,12,7505,868)
SYM  #inv
BB(160,805,195,825)
TITLE 175 815  #inv_60
MODEL 101
PROP                                                                                                                                    
REC(4545,2500,0,0, )
VIS 0
PIN(160,815,0.000,0.000)in
PIN(195,815,0.005,0.008)out
LIG(160,815,170,815)
LIG(170,805,170,825)
LIG(170,805,185,815)
LIG(170,825,185,815)
LIG(187,815,187,815)
LIG(189,815,195,815)
VLG not not1(out,in);
FSYM
SYM  #button
BB(121,811,130,819)
TITLE 125 815  #Clear
MODEL 59
PROP                                                                                                                                    
REC(122,812,6,6,r)
VIS 1
PIN(130,815,0.000,0.000)Clear
LIG(129,815,130,815)
LIG(121,819,121,811)
LIG(129,819,121,819)
LIG(129,811,129,819)
LIG(121,811,129,811)
LIG(122,818,122,812)
LIG(128,818,122,818)
LIG(128,812,128,818)
LIG(122,812,128,812)
FSYM
SYM  #xor2
BB(260,615,280,650)
TITLE 270 633  #xor2_68
MODEL 602
PROP                                                                                                                                    
REC(2125,-3735,0,0, )
VIS 0
PIN(265,650,0.000,0.000)a
PIN(275,650,0.000,0.000)b
PIN(270,615,0.015,0.002)out
LIG(277,642,280,646)
LIG(277,638,280,642)
LIG(270,622,270,615)
LIG(272,623,276,626)
LIG(270,622,272,623)
LIG(268,623,270,622)
LIG(264,626,268,623)
LIG(261,631,264,626)
LIG(276,626,279,631)
LIG(279,631,280,642)
LIG(260,642,261,631)
LIG(273,636,277,638)
LIG(260,642,263,638)
LIG(263,638,267,636)
LIG(267,636,270,635)
LIG(270,635,273,636)
LIG(260,646,263,642)
LIG(263,642,267,640)
LIG(267,640,270,639)
LIG(270,639,273,640)
LIG(273,640,277,642)
LIG(265,650,265,641)
LIG(275,650,275,641)
VLG xor xor2(out,a,b);
FSYM
SYM  #xor2
BB(375,615,395,650)
TITLE 385 633  #xor2_67
MODEL 602
PROP                                                                                                                                    
REC(2260,-3625,0,0, )
VIS 0
PIN(380,650,0.000,0.000)a
PIN(390,650,0.000,0.000)b
PIN(385,615,0.015,0.002)out
LIG(392,642,395,646)
LIG(392,638,395,642)
LIG(385,622,385,615)
LIG(387,623,391,626)
LIG(385,622,387,623)
LIG(383,623,385,622)
LIG(379,626,383,623)
LIG(376,631,379,626)
LIG(391,626,394,631)
LIG(394,631,395,642)
LIG(375,642,376,631)
LIG(388,636,392,638)
LIG(375,642,378,638)
LIG(378,638,382,636)
LIG(382,636,385,635)
LIG(385,635,388,636)
LIG(375,646,378,642)
LIG(378,642,382,640)
LIG(382,640,385,639)
LIG(385,639,388,640)
LIG(388,640,392,642)
LIG(380,650,380,641)
LIG(390,650,390,641)
VLG xor xor2(out,a,b);
FSYM
SYM  #xor2
BB(495,615,515,650)
TITLE 505 633  #xor2_66
MODEL 602
PROP                                                                                                                                    
REC(2375,-3500,0,0, )
VIS 0
PIN(500,650,0.000,0.000)a
PIN(510,650,0.000,0.000)b
PIN(505,615,0.015,0.002)out
LIG(512,642,515,646)
LIG(512,638,515,642)
LIG(505,622,505,615)
LIG(507,623,511,626)
LIG(505,622,507,623)
LIG(503,623,505,622)
LIG(499,626,503,623)
LIG(496,631,499,626)
LIG(511,626,514,631)
LIG(514,631,515,642)
LIG(495,642,496,631)
LIG(508,636,512,638)
LIG(495,642,498,638)
LIG(498,638,502,636)
LIG(502,636,505,635)
LIG(505,635,508,636)
LIG(495,646,498,642)
LIG(498,642,502,640)
LIG(502,640,505,639)
LIG(505,639,508,640)
LIG(508,640,512,642)
LIG(500,650,500,641)
LIG(510,650,510,641)
VLG xor xor2(out,a,b);
FSYM
SYM  #xor2
BB(620,615,640,650)
TITLE 630 633  #xor2_65
MODEL 602
PROP                                                                                                                                    
REC(2500,-3390,0,0, )
VIS 0
PIN(625,650,0.000,0.000)a
PIN(635,650,0.000,0.000)b
PIN(630,615,0.015,0.002)out
LIG(637,642,640,646)
LIG(637,638,640,642)
LIG(630,622,630,615)
LIG(632,623,636,626)
LIG(630,622,632,623)
LIG(628,623,630,622)
LIG(624,626,628,623)
LIG(621,631,624,626)
LIG(636,626,639,631)
LIG(639,631,640,642)
LIG(620,642,621,631)
LIG(633,636,637,638)
LIG(620,642,623,638)
LIG(623,638,627,636)
LIG(627,636,630,635)
LIG(630,635,633,636)
LIG(620,646,623,642)
LIG(623,642,627,640)
LIG(627,640,630,639)
LIG(630,639,633,640)
LIG(633,640,637,642)
LIG(625,650,625,641)
LIG(635,650,635,641)
VLG xor xor2(out,a,b);
FSYM
SYM  #light
BB(268,565,274,579)
TITLE 270 579  #Phase0
MODEL 49
PROP                                                                                                                                    
REC(269,566,4,4,r)
VIS 1
PIN(270,580,0.000,0.000)Phase0
LIG(273,571,273,566)
LIG(273,566,272,565)
LIG(269,566,269,571)
LIG(272,576,272,573)
LIG(271,576,274,576)
LIG(271,578,273,576)
LIG(272,578,274,576)
LIG(268,573,274,573)
LIG(270,573,270,580)
LIG(268,571,268,573)
LIG(274,571,268,571)
LIG(274,573,274,571)
LIG(270,565,269,566)
LIG(272,565,270,565)
FSYM
SYM  #light
BB(383,565,389,579)
TITLE 385 579  #Phase1
MODEL 49
PROP                                                                                                                                    
REC(384,566,4,4,r)
VIS 1
PIN(385,580,0.000,0.000)Phase1
LIG(388,571,388,566)
LIG(388,566,387,565)
LIG(384,566,384,571)
LIG(387,576,387,573)
LIG(386,576,389,576)
LIG(386,578,388,576)
LIG(387,578,389,576)
LIG(383,573,389,573)
LIG(385,573,385,580)
LIG(383,571,383,573)
LIG(389,571,383,571)
LIG(389,573,389,571)
LIG(385,565,384,566)
LIG(387,565,385,565)
FSYM
SYM  #light
BB(503,565,509,579)
TITLE 505 579  #Phase2
MODEL 49
PROP                                                                                                                                    
REC(504,566,4,4,r)
VIS 1
PIN(505,580,0.000,0.000)Phase2
LIG(508,571,508,566)
LIG(508,566,507,565)
LIG(504,566,504,571)
LIG(507,576,507,573)
LIG(506,576,509,576)
LIG(506,578,508,576)
LIG(507,578,509,576)
LIG(503,573,509,573)
LIG(505,573,505,580)
LIG(503,571,503,573)
LIG(509,571,503,571)
LIG(509,573,509,571)
LIG(505,565,504,566)
LIG(507,565,505,565)
FSYM
SYM  #light
BB(628,565,634,579)
TITLE 630 579  #Phase3
MODEL 49
PROP                                                                                                                                    
REC(629,566,4,4,r)
VIS 1
PIN(630,580,0.000,0.000)Phase3
LIG(633,571,633,566)
LIG(633,566,632,565)
LIG(629,566,629,571)
LIG(632,576,632,573)
LIG(631,576,634,576)
LIG(631,578,633,576)
LIG(632,578,634,576)
LIG(628,573,634,573)
LIG(630,573,630,580)
LIG(628,571,628,573)
LIG(634,571,628,571)
LIG(634,573,634,571)
LIG(630,565,629,566)
LIG(632,565,630,565)
FSYM
SYM  #clock
BB(170,862,185,868)
TITLE 175 865  #clock9
MODEL 69
PROP   2560 2560 0                                                                                                                               
REC(172,863,6,4,r)
VIS 1
PIN(185,865,0.250,0.008)PhaseCount
LIG(180,865,185,865)
LIG(175,863,173,863)
LIG(179,863,177,863)
LIG(180,862,180,868)
LIG(170,868,170,862)
LIG(175,867,175,863)
LIG(177,863,177,867)
LIG(177,867,175,867)
LIG(173,867,171,867)
LIG(173,863,173,867)
LIG(180,868,170,868)
LIG(180,862,170,862)
FSYM
SYM  #dreg
BB(620,755,650,780)
TITLE 632 763  #dreg_64
MODEL 860
PROP                                                                                                                                    
REC(595,745,0,0,r)
VIS 5
PIN(620,760,0.000,0.000)D
PIN(620,770,0.000,0.000)RST
PIN(635,780,0.000,0.000)H
PIN(650,770,0.020,0.004)Q
PIN(650,760,0.020,0.002)nQ
LIG(620,770,625,770)
LIG(620,760,625,760)
LIG(635,780,635,779)
LIG(635,777,635,777)
LIG(645,770,650,770)
LIG(645,760,650,760)
LIG(645,775,625,775)
LIG(645,755,645,775)
LIG(625,755,645,755)
LIG(625,775,625,755)
LIG(634,775,635,773)
LIG(635,773,636,775)
VLG module dreg(D,RST,H,Q,nQ);
VLG input D,RST,H;
VLG output Q,nQ;
VLG endmodule
FSYM
SYM  #dreg
BB(490,755,520,780)
TITLE 502 763  #dreg_63
MODEL 860
PROP                                                                                                                                    
REC(465,745,0,0,r)
VIS 5
PIN(490,760,0.000,0.000)D
PIN(490,770,0.000,0.000)RST
PIN(505,780,0.000,0.000)H
PIN(520,770,0.020,0.000)Q
PIN(520,760,0.020,0.000)nQ
LIG(490,770,495,770)
LIG(490,760,495,760)
LIG(505,780,505,779)
LIG(505,777,505,777)
LIG(515,770,520,770)
LIG(515,760,520,760)
LIG(515,775,495,775)
LIG(515,755,515,775)
LIG(495,755,515,755)
LIG(495,775,495,755)
LIG(504,775,505,773)
LIG(505,773,506,775)
VLG module dreg(D,RST,H,Q,nQ);
VLG input D,RST,H;
VLG output Q,nQ;
VLG endmodule
FSYM
SYM  #dreg
BB(380,755,410,780)
TITLE 392 763  #dreg_62
MODEL 860
PROP                                                                                                                                    
REC(355,745,0,0,r)
VIS 5
PIN(380,760,0.000,0.000)D
PIN(380,770,0.000,0.000)RST
PIN(395,780,0.000,0.000)H
PIN(410,770,0.020,0.006)Q
PIN(410,760,0.020,0.000)nQ
LIG(380,770,385,770)
LIG(380,760,385,760)
LIG(395,780,395,779)
LIG(395,777,395,777)
LIG(405,770,410,770)
LIG(405,760,410,760)
LIG(405,775,385,775)
LIG(405,755,405,775)
LIG(385,755,405,755)
LIG(385,775,385,755)
LIG(394,775,395,773)
LIG(395,773,396,775)
VLG module dreg(D,RST,H,Q,nQ);
VLG input D,RST,H;
VLG output Q,nQ;
VLG endmodule
FSYM
SYM  #dreg
BB(260,755,290,780)
TITLE 272 763  #dreg_61
MODEL 860
PROP                                                                                                                                    
REC(235,745,0,0,r)
VIS 5
PIN(260,760,0.000,0.000)D
PIN(260,770,0.000,0.000)RST
PIN(275,780,0.000,0.000)H
PIN(290,770,0.020,0.000)Q
PIN(290,760,0.020,0.002)nQ
LIG(260,770,265,770)
LIG(260,760,265,760)
LIG(275,780,275,779)
LIG(275,777,275,777)
LIG(285,770,290,770)
LIG(285,760,290,760)
LIG(285,775,265,775)
LIG(285,755,285,775)
LIG(265,755,285,755)
LIG(265,775,265,755)
LIG(274,775,275,773)
LIG(275,773,276,775)
VLG module dreg(D,RST,H,Q,nQ);
VLG input D,RST,H;
VLG output Q,nQ;
VLG endmodule
FSYM
CNC(570 760)
CNC(475 815)
CNC(365 815)
CNC(240 815)
CNC(500 705)
CNC(625 705)
CNC(505 865)
CNC(395 865)
CNC(275 865)
CNC(460 760)
CNC(635 685)
CNC(350 760)
LIG(635,685,635,705)
LIG(265,685,635,685)
LIG(265,650,265,685)
LIG(700,705,700,770)
LIG(650,770,700,770)
LIG(635,705,700,705)
LIG(635,650,635,685)
LIG(625,705,625,745)
LIG(510,705,625,705)
LIG(510,650,510,705)
LIG(500,705,500,745)
LIG(390,705,500,705)
LIG(390,650,390,705)
LIG(350,760,350,770)
LIG(350,760,380,760)
LIG(460,760,460,770)
LIG(270,580,270,615)
LIG(460,760,495,760)
LIG(570,760,570,770)
LIG(570,760,620,760)
LIG(570,745,625,745)
LIG(570,745,570,760)
LIG(525,770,570,770)
LIG(625,650,625,705)
LIG(460,745,460,760)
LIG(460,745,500,745)
LIG(500,650,500,705)
LIG(410,770,460,770)
LIG(675,725,675,760)
LIG(650,760,675,760)
LIG(245,725,675,725)
LIG(245,725,245,760)
LIG(385,580,385,615)
LIG(245,760,260,760)
LIG(350,735,350,760)
LIG(380,735,350,735)
LIG(380,650,380,735)
LIG(295,770,350,770)
LIG(310,745,310,760)
LIG(275,745,310,745)
LIG(290,760,310,760)
LIG(275,650,275,745)
LIG(130,815,160,815)
LIG(475,815,605,815)
LIG(365,815,475,815)
LIG(240,815,365,815)
LIG(195,815,240,815)
LIG(605,770,605,815)
LIG(505,580,505,620)
LIG(475,770,475,815)
LIG(365,770,365,815)
LIG(240,770,240,815)
LIG(605,770,620,770)
LIG(475,770,490,770)
LIG(365,770,380,770)
LIG(240,770,260,770)
LIG(505,865,635,865)
LIG(395,865,505,865)
LIG(275,865,395,865)
LIG(185,865,275,865)
LIG(635,780,635,865)
LIG(505,780,505,865)
LIG(395,780,395,865)
LIG(630,580,630,615)
LIG(275,780,275,865)
TEXT 7465 12  # 
FFIG C:\Users\roxana\OneDrive\Desktop\RingCounter4.sch
