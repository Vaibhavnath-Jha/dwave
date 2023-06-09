\ENCODING=ISO-8859-1
\Problem name: gamsmodel

Maximize
 _obj: wnx + constobj
Subject To
 _eq1(dice1)#0:               - wnx + comp(dice1,face1,face1)
                              + comp(dice1,face1,face2)
                              + comp(dice1,face1,face3)
                              + comp(dice1,face1,face4)
                              + comp(dice1,face1,face5)
                              + comp(dice1,face1,face6)
                              + comp(dice1,face2,face1)
                              + comp(dice1,face2,face2)
                              + comp(dice1,face2,face3)
                              + comp(dice1,face2,face4)
                              + comp(dice1,face2,face5)
                              + comp(dice1,face2,face6)
                              + comp(dice1,face3,face1)
                              + comp(dice1,face3,face2)
                              + comp(dice1,face3,face3)
                              + comp(dice1,face3,face4)
                              + comp(dice1,face3,face5)
                              + comp(dice1,face3,face6)
                              + comp(dice1,face4,face1)
                              + comp(dice1,face4,face2)
                              + comp(dice1,face4,face3)
                              + comp(dice1,face4,face4)
                              + comp(dice1,face4,face5)
                              + comp(dice1,face4,face6)
                              + comp(dice1,face5,face1)
                              + comp(dice1,face5,face2)
                              + comp(dice1,face5,face3)
                              + comp(dice1,face5,face4)
                              + comp(dice1,face5,face5)
                              + comp(dice1,face5,face6)
                              + comp(dice1,face6,face1)
                              + comp(dice1,face6,face2)
                              + comp(dice1,face6,face3)
                              + comp(dice1,face6,face4)
                              + comp(dice1,face6,face5)
                              + comp(dice1,face6,face6)  = 0
 _eq1(dice2)#1:               - wnx + comp(dice2,face1,face1)
                              + comp(dice2,face1,face2)
                              + comp(dice2,face1,face3)
                              + comp(dice2,face1,face4)
                              + comp(dice2,face1,face5)
                              + comp(dice2,face1,face6)
                              + comp(dice2,face2,face1)
                              + comp(dice2,face2,face2)
                              + comp(dice2,face2,face3)
                              + comp(dice2,face2,face4)
                              + comp(dice2,face2,face5)
                              + comp(dice2,face2,face6)
                              + comp(dice2,face3,face1)
                              + comp(dice2,face3,face2)
                              + comp(dice2,face3,face3)
                              + comp(dice2,face3,face4)
                              + comp(dice2,face3,face5)
                              + comp(dice2,face3,face6)
                              + comp(dice2,face4,face1)
                              + comp(dice2,face4,face2)
                              + comp(dice2,face4,face3)
                              + comp(dice2,face4,face4)
                              + comp(dice2,face4,face5)
                              + comp(dice2,face4,face6)
                              + comp(dice2,face5,face1)
                              + comp(dice2,face5,face2)
                              + comp(dice2,face5,face3)
                              + comp(dice2,face5,face4)
                              + comp(dice2,face5,face5)
                              + comp(dice2,face5,face6)
                              + comp(dice2,face6,face1)
                              + comp(dice2,face6,face2)
                              + comp(dice2,face6,face3)
                              + comp(dice2,face6,face4)
                              + comp(dice2,face6,face5)
                              + comp(dice2,face6,face6)  = 0
 _eq1(dice3)#2:               - wnx + comp(dice3,face1,face1)
                              + comp(dice3,face1,face2)
                              + comp(dice3,face1,face3)
                              + comp(dice3,face1,face4)
                              + comp(dice3,face1,face5)
                              + comp(dice3,face1,face6)
                              + comp(dice3,face2,face1)
                              + comp(dice3,face2,face2)
                              + comp(dice3,face2,face3)
                              + comp(dice3,face2,face4)
                              + comp(dice3,face2,face5)
                              + comp(dice3,face2,face6)
                              + comp(dice3,face3,face1)
                              + comp(dice3,face3,face2)
                              + comp(dice3,face3,face3)
                              + comp(dice3,face3,face4)
                              + comp(dice3,face3,face5)
                              + comp(dice3,face3,face6)
                              + comp(dice3,face4,face1)
                              + comp(dice3,face4,face2)
                              + comp(dice3,face4,face3)
                              + comp(dice3,face4,face4)
                              + comp(dice3,face4,face5)
                              + comp(dice3,face4,face6)
                              + comp(dice3,face5,face1)
                              + comp(dice3,face5,face2)
                              + comp(dice3,face5,face3)
                              + comp(dice3,face5,face4)
                              + comp(dice3,face5,face5)
                              + comp(dice3,face5,face6)
                              + comp(dice3,face6,face1)
                              + comp(dice3,face6,face2)
                              + comp(dice3,face6,face3)
                              + comp(dice3,face6,face4)
                              + comp(dice3,face6,face5)
                              + comp(dice3,face6,face6)  = 0
 _eq3(dice1,face1,face1)#3:   fval(dice1,face1) - fval(dice2,face1)
                              - 17 comp(dice1,face1,face1) >= -16
 _eq3(dice1,face1,face2)#4:   fval(dice1,face1) - fval(dice2,face2)
                              - 17 comp(dice1,face1,face2) >= -16
 _eq3(dice1,face1,face3)#5:   fval(dice1,face1) - fval(dice2,face3)
                              - 17 comp(dice1,face1,face3) >= -16
 _eq3(dice1,face1,face4)#6:   fval(dice1,face1) - fval(dice2,face4)
                              - 17 comp(dice1,face1,face4) >= -16
 _eq3(dice1,face1,face5)#7:   fval(dice1,face1) - fval(dice2,face5)
                              - 17 comp(dice1,face1,face5) >= -16
 _eq3(dice1,face1,face6)#8:   fval(dice1,face1) - fval(dice2,face6)
                              - 17 comp(dice1,face1,face6) >= -16
 _eq3(dice1,face2,face1)#9:   fval(dice1,face2) - fval(dice2,face1)
                              - 17 comp(dice1,face2,face1) >= -16
 _eq3(dice1,face2,face2)#10:  fval(dice1,face2) - fval(dice2,face2)
                              - 17 comp(dice1,face2,face2) >= -16
 _eq3(dice1,face2,face3)#11:  fval(dice1,face2) - fval(dice2,face3)
                              - 17 comp(dice1,face2,face3) >= -16
 _eq3(dice1,face2,face4)#12:  fval(dice1,face2) - fval(dice2,face4)
                              - 17 comp(dice1,face2,face4) >= -16
 _eq3(dice1,face2,face5)#13:  fval(dice1,face2) - fval(dice2,face5)
                              - 17 comp(dice1,face2,face5) >= -16
 _eq3(dice1,face2,face6)#14:  fval(dice1,face2) - fval(dice2,face6)
                              - 17 comp(dice1,face2,face6) >= -16
 _eq3(dice1,face3,face1)#15:  fval(dice1,face3) - fval(dice2,face1)
                              - 17 comp(dice1,face3,face1) >= -16
 _eq3(dice1,face3,face2)#16:  fval(dice1,face3) - fval(dice2,face2)
                              - 17 comp(dice1,face3,face2) >= -16
 _eq3(dice1,face3,face3)#17:  fval(dice1,face3) - fval(dice2,face3)
                              - 17 comp(dice1,face3,face3) >= -16
 _eq3(dice1,face3,face4)#18:  fval(dice1,face3) - fval(dice2,face4)
                              - 17 comp(dice1,face3,face4) >= -16
 _eq3(dice1,face3,face5)#19:  fval(dice1,face3) - fval(dice2,face5)
                              - 17 comp(dice1,face3,face5) >= -16
 _eq3(dice1,face3,face6)#20:  fval(dice1,face3) - fval(dice2,face6)
                              - 17 comp(dice1,face3,face6) >= -16
 _eq3(dice1,face4,face1)#21:  fval(dice1,face4) - fval(dice2,face1)
                              - 17 comp(dice1,face4,face1) >= -16
 _eq3(dice1,face4,face2)#22:  fval(dice1,face4) - fval(dice2,face2)
                              - 17 comp(dice1,face4,face2) >= -16
 _eq3(dice1,face4,face3)#23:  fval(dice1,face4) - fval(dice2,face3)
                              - 17 comp(dice1,face4,face3) >= -16
 _eq3(dice1,face4,face4)#24:  fval(dice1,face4) - fval(dice2,face4)
                              - 17 comp(dice1,face4,face4) >= -16
 _eq3(dice1,face4,face5)#25:  fval(dice1,face4) - fval(dice2,face5)
                              - 17 comp(dice1,face4,face5) >= -16
 _eq3(dice1,face4,face6)#26:  fval(dice1,face4) - fval(dice2,face6)
                              - 17 comp(dice1,face4,face6) >= -16
 _eq3(dice1,face5,face1)#27:  fval(dice1,face5) - fval(dice2,face1)
                              - 17 comp(dice1,face5,face1) >= -16
 _eq3(dice1,face5,face2)#28:  fval(dice1,face5) - fval(dice2,face2)
                              - 17 comp(dice1,face5,face2) >= -16
 _eq3(dice1,face5,face3)#29:  fval(dice1,face5) - fval(dice2,face3)
                              - 17 comp(dice1,face5,face3) >= -16
 _eq3(dice1,face5,face4)#30:  fval(dice1,face5) - fval(dice2,face4)
                              - 17 comp(dice1,face5,face4) >= -16
 _eq3(dice1,face5,face5)#31:  fval(dice1,face5) - fval(dice2,face5)
                              - 17 comp(dice1,face5,face5) >= -16
 _eq3(dice1,face5,face6)#32:  fval(dice1,face5) - fval(dice2,face6)
                              - 17 comp(dice1,face5,face6) >= -16
 _eq3(dice1,face6,face1)#33:  fval(dice1,face6) - fval(dice2,face1)
                              - 17 comp(dice1,face6,face1) >= -16
 _eq3(dice1,face6,face2)#34:  fval(dice1,face6) - fval(dice2,face2)
                              - 17 comp(dice1,face6,face2) >= -16
 _eq3(dice1,face6,face3)#35:  fval(dice1,face6) - fval(dice2,face3)
                              - 17 comp(dice1,face6,face3) >= -16
 _eq3(dice1,face6,face4)#36:  fval(dice1,face6) - fval(dice2,face4)
                              - 17 comp(dice1,face6,face4) >= -16
 _eq3(dice1,face6,face5)#37:  fval(dice1,face6) - fval(dice2,face5)
                              - 17 comp(dice1,face6,face5) >= -16
 _eq3(dice1,face6,face6)#38:  fval(dice1,face6) - fval(dice2,face6)
                              - 17 comp(dice1,face6,face6) >= -16
 _eq3(dice2,face1,face1)#39:  fval(dice2,face1) - fval(dice3,face1)
                              - 17 comp(dice2,face1,face1) >= -16
 _eq3(dice2,face1,face2)#40:  fval(dice2,face1) - fval(dice3,face2)
                              - 17 comp(dice2,face1,face2) >= -16
 _eq3(dice2,face1,face3)#41:  fval(dice2,face1) - fval(dice3,face3)
                              - 17 comp(dice2,face1,face3) >= -16
 _eq3(dice2,face1,face4)#42:  fval(dice2,face1) - fval(dice3,face4)
                              - 17 comp(dice2,face1,face4) >= -16
 _eq3(dice2,face1,face5)#43:  fval(dice2,face1) - fval(dice3,face5)
                              - 17 comp(dice2,face1,face5) >= -16
 _eq3(dice2,face1,face6)#44:  fval(dice2,face1) - fval(dice3,face6)
                              - 17 comp(dice2,face1,face6) >= -16
 _eq3(dice2,face2,face1)#45:  fval(dice2,face2) - fval(dice3,face1)
                              - 17 comp(dice2,face2,face1) >= -16
 _eq3(dice2,face2,face2)#46:  fval(dice2,face2) - fval(dice3,face2)
                              - 17 comp(dice2,face2,face2) >= -16
 _eq3(dice2,face2,face3)#47:  fval(dice2,face2) - fval(dice3,face3)
                              - 17 comp(dice2,face2,face3) >= -16
 _eq3(dice2,face2,face4)#48:  fval(dice2,face2) - fval(dice3,face4)
                              - 17 comp(dice2,face2,face4) >= -16
 _eq3(dice2,face2,face5)#49:  fval(dice2,face2) - fval(dice3,face5)
                              - 17 comp(dice2,face2,face5) >= -16
 _eq3(dice2,face2,face6)#50:  fval(dice2,face2) - fval(dice3,face6)
                              - 17 comp(dice2,face2,face6) >= -16
 _eq3(dice2,face3,face1)#51:  fval(dice2,face3) - fval(dice3,face1)
                              - 17 comp(dice2,face3,face1) >= -16
 _eq3(dice2,face3,face2)#52:  fval(dice2,face3) - fval(dice3,face2)
                              - 17 comp(dice2,face3,face2) >= -16
 _eq3(dice2,face3,face3)#53:  fval(dice2,face3) - fval(dice3,face3)
                              - 17 comp(dice2,face3,face3) >= -16
 _eq3(dice2,face3,face4)#54:  fval(dice2,face3) - fval(dice3,face4)
                              - 17 comp(dice2,face3,face4) >= -16
 _eq3(dice2,face3,face5)#55:  fval(dice2,face3) - fval(dice3,face5)
                              - 17 comp(dice2,face3,face5) >= -16
 _eq3(dice2,face3,face6)#56:  fval(dice2,face3) - fval(dice3,face6)
                              - 17 comp(dice2,face3,face6) >= -16
 _eq3(dice2,face4,face1)#57:  fval(dice2,face4) - fval(dice3,face1)
                              - 17 comp(dice2,face4,face1) >= -16
 _eq3(dice2,face4,face2)#58:  fval(dice2,face4) - fval(dice3,face2)
                              - 17 comp(dice2,face4,face2) >= -16
 _eq3(dice2,face4,face3)#59:  fval(dice2,face4) - fval(dice3,face3)
                              - 17 comp(dice2,face4,face3) >= -16
 _eq3(dice2,face4,face4)#60:  fval(dice2,face4) - fval(dice3,face4)
                              - 17 comp(dice2,face4,face4) >= -16
 _eq3(dice2,face4,face5)#61:  fval(dice2,face4) - fval(dice3,face5)
                              - 17 comp(dice2,face4,face5) >= -16
 _eq3(dice2,face4,face6)#62:  fval(dice2,face4) - fval(dice3,face6)
                              - 17 comp(dice2,face4,face6) >= -16
 _eq3(dice2,face5,face1)#63:  fval(dice2,face5) - fval(dice3,face1)
                              - 17 comp(dice2,face5,face1) >= -16
 _eq3(dice2,face5,face2)#64:  fval(dice2,face5) - fval(dice3,face2)
                              - 17 comp(dice2,face5,face2) >= -16
 _eq3(dice2,face5,face3)#65:  fval(dice2,face5) - fval(dice3,face3)
                              - 17 comp(dice2,face5,face3) >= -16
 _eq3(dice2,face5,face4)#66:  fval(dice2,face5) - fval(dice3,face4)
                              - 17 comp(dice2,face5,face4) >= -16
 _eq3(dice2,face5,face5)#67:  fval(dice2,face5) - fval(dice3,face5)
                              - 17 comp(dice2,face5,face5) >= -16
 _eq3(dice2,face5,face6)#68:  fval(dice2,face5) - fval(dice3,face6)
                              - 17 comp(dice2,face5,face6) >= -16
 _eq3(dice2,face6,face1)#69:  fval(dice2,face6) - fval(dice3,face1)
                              - 17 comp(dice2,face6,face1) >= -16
 _eq3(dice2,face6,face2)#70:  fval(dice2,face6) - fval(dice3,face2)
                              - 17 comp(dice2,face6,face2) >= -16
 _eq3(dice2,face6,face3)#71:  fval(dice2,face6) - fval(dice3,face3)
                              - 17 comp(dice2,face6,face3) >= -16
 _eq3(dice2,face6,face4)#72:  fval(dice2,face6) - fval(dice3,face4)
                              - 17 comp(dice2,face6,face4) >= -16
 _eq3(dice2,face6,face5)#73:  fval(dice2,face6) - fval(dice3,face5)
                              - 17 comp(dice2,face6,face5) >= -16
 _eq3(dice2,face6,face6)#74:  fval(dice2,face6) - fval(dice3,face6)
                              - 17 comp(dice2,face6,face6) >= -16
 _eq3(dice3,face1,face1)#75:  - fval(dice1,face1) + fval(dice3,face1)
                              - 17 comp(dice3,face1,face1) >= -16
 _eq3(dice3,face1,face2)#76:  - fval(dice1,face2) + fval(dice3,face1)
                              - 17 comp(dice3,face1,face2) >= -16
 _eq3(dice3,face1,face3)#77:  - fval(dice1,face3) + fval(dice3,face1)
                              - 17 comp(dice3,face1,face3) >= -16
 _eq3(dice3,face1,face4)#78:  - fval(dice1,face4) + fval(dice3,face1)
                              - 17 comp(dice3,face1,face4) >= -16
 _eq3(dice3,face1,face5)#79:  - fval(dice1,face5) + fval(dice3,face1)
                              - 17 comp(dice3,face1,face5) >= -16
 _eq3(dice3,face1,face6)#80:  - fval(dice1,face6) + fval(dice3,face1)
                              - 17 comp(dice3,face1,face6) >= -16
 _eq3(dice3,face2,face1)#81:  - fval(dice1,face1) + fval(dice3,face2)
                              - 17 comp(dice3,face2,face1) >= -16
 _eq3(dice3,face2,face2)#82:  - fval(dice1,face2) + fval(dice3,face2)
                              - 17 comp(dice3,face2,face2) >= -16
 _eq3(dice3,face2,face3)#83:  - fval(dice1,face3) + fval(dice3,face2)
                              - 17 comp(dice3,face2,face3) >= -16
 _eq3(dice3,face2,face4)#84:  - fval(dice1,face4) + fval(dice3,face2)
                              - 17 comp(dice3,face2,face4) >= -16
 _eq3(dice3,face2,face5)#85:  - fval(dice1,face5) + fval(dice3,face2)
                              - 17 comp(dice3,face2,face5) >= -16
 _eq3(dice3,face2,face6)#86:  - fval(dice1,face6) + fval(dice3,face2)
                              - 17 comp(dice3,face2,face6) >= -16
 _eq3(dice3,face3,face1)#87:  - fval(dice1,face1) + fval(dice3,face3)
                              - 17 comp(dice3,face3,face1) >= -16
 _eq3(dice3,face3,face2)#88:  - fval(dice1,face2) + fval(dice3,face3)
                              - 17 comp(dice3,face3,face2) >= -16
 _eq3(dice3,face3,face3)#89:  - fval(dice1,face3) + fval(dice3,face3)
                              - 17 comp(dice3,face3,face3) >= -16
 _eq3(dice3,face3,face4)#90:  - fval(dice1,face4) + fval(dice3,face3)
                              - 17 comp(dice3,face3,face4) >= -16
 _eq3(dice3,face3,face5)#91:  - fval(dice1,face5) + fval(dice3,face3)
                              - 17 comp(dice3,face3,face5) >= -16
 _eq3(dice3,face3,face6)#92:  - fval(dice1,face6) + fval(dice3,face3)
                              - 17 comp(dice3,face3,face6) >= -16
 _eq3(dice3,face4,face1)#93:  - fval(dice1,face1) + fval(dice3,face4)
                              - 17 comp(dice3,face4,face1) >= -16
 _eq3(dice3,face4,face2)#94:  - fval(dice1,face2) + fval(dice3,face4)
                              - 17 comp(dice3,face4,face2) >= -16
 _eq3(dice3,face4,face3)#95:  - fval(dice1,face3) + fval(dice3,face4)
                              - 17 comp(dice3,face4,face3) >= -16
 _eq3(dice3,face4,face4)#96:  - fval(dice1,face4) + fval(dice3,face4)
                              - 17 comp(dice3,face4,face4) >= -16
 _eq3(dice3,face4,face5)#97:  - fval(dice1,face5) + fval(dice3,face4)
                              - 17 comp(dice3,face4,face5) >= -16
 _eq3(dice3,face4,face6)#98:  - fval(dice1,face6) + fval(dice3,face4)
                              - 17 comp(dice3,face4,face6) >= -16
 _eq3(dice3,face5,face1)#99:  - fval(dice1,face1) + fval(dice3,face5)
                              - 17 comp(dice3,face5,face1) >= -16
 _eq3(dice3,face5,face2)#100: - fval(dice1,face2) + fval(dice3,face5)
                              - 17 comp(dice3,face5,face2) >= -16
 _eq3(dice3,face5,face3)#101: - fval(dice1,face3) + fval(dice3,face5)
                              - 17 comp(dice3,face5,face3) >= -16
 _eq3(dice3,face5,face4)#102: - fval(dice1,face4) + fval(dice3,face5)
                              - 17 comp(dice3,face5,face4) >= -16
 _eq3(dice3,face5,face5)#103: - fval(dice1,face5) + fval(dice3,face5)
                              - 17 comp(dice3,face5,face5) >= -16
 _eq3(dice3,face5,face6)#104: - fval(dice1,face6) + fval(dice3,face5)
                              - 17 comp(dice3,face5,face6) >= -16
 _eq3(dice3,face6,face1)#105: - fval(dice1,face1) + fval(dice3,face6)
                              - 17 comp(dice3,face6,face1) >= -16
 _eq3(dice3,face6,face2)#106: - fval(dice1,face2) + fval(dice3,face6)
                              - 17 comp(dice3,face6,face2) >= -16
 _eq3(dice3,face6,face3)#107: - fval(dice1,face3) + fval(dice3,face6)
                              - 17 comp(dice3,face6,face3) >= -16
 _eq3(dice3,face6,face4)#108: - fval(dice1,face4) + fval(dice3,face6)
                              - 17 comp(dice3,face6,face4) >= -16
 _eq3(dice3,face6,face5)#109: - fval(dice1,face5) + fval(dice3,face6)
                              - 17 comp(dice3,face6,face5) >= -16
 _eq3(dice3,face6,face6)#110: - fval(dice1,face6) + fval(dice3,face6)
                              - 17 comp(dice3,face6,face6) >= -16
 _eq4(dice1,face1)#111:       fval(dice1,face1) - fval(dice1,face2) <= -1
 _eq4(dice1,face2)#112:       fval(dice1,face2) - fval(dice1,face3) <= -1
 _eq4(dice1,face3)#113:       fval(dice1,face3) - fval(dice1,face4) <= -1
 _eq4(dice1,face4)#114:       fval(dice1,face4) - fval(dice1,face5) <= -1
 _eq4(dice1,face5)#115:       fval(dice1,face5) - fval(dice1,face6) <= -1
 _eq4(dice2,face1)#116:       fval(dice2,face1) - fval(dice2,face2) <= -1
 _eq4(dice2,face2)#117:       fval(dice2,face2) - fval(dice2,face3) <= -1
 _eq4(dice2,face3)#118:       fval(dice2,face3) - fval(dice2,face4) <= -1
 _eq4(dice2,face4)#119:       fval(dice2,face4) - fval(dice2,face5) <= -1
 _eq4(dice2,face5)#120:       fval(dice2,face5) - fval(dice2,face6) <= -1
 _eq4(dice3,face1)#121:       fval(dice3,face1) - fval(dice3,face2) <= -1
 _eq4(dice3,face2)#122:       fval(dice3,face2) - fval(dice3,face3) <= -1
 _eq4(dice3,face3)#123:       fval(dice3,face3) - fval(dice3,face4) <= -1
 _eq4(dice3,face4)#124:       fval(dice3,face4) - fval(dice3,face5) <= -1
 _eq4(dice3,face5)#125:       fval(dice3,face5) - fval(dice3,face6) <= -1
Bounds
      wnx Free
      fval(dice1,face1) = 1
 1 <= fval(dice1,face2) <= 18
 1 <= fval(dice1,face3) <= 18
 1 <= fval(dice1,face4) <= 18
 1 <= fval(dice1,face5) <= 18
 1 <= fval(dice1,face6) <= 18
 1 <= fval(dice2,face1) <= 18
 1 <= fval(dice2,face2) <= 18
 1 <= fval(dice2,face3) <= 18
 1 <= fval(dice2,face4) <= 18
 1 <= fval(dice2,face5) <= 18
 1 <= fval(dice2,face6) <= 18
 1 <= fval(dice3,face1) <= 18
 1 <= fval(dice3,face2) <= 18
 1 <= fval(dice3,face3) <= 18
 1 <= fval(dice3,face4) <= 18
 1 <= fval(dice3,face5) <= 18
 1 <= fval(dice3,face6) <= 18
 0 <= comp(dice1,face1,face1) <= 1
 0 <= comp(dice1,face1,face2) <= 1
 0 <= comp(dice1,face1,face3) <= 1
 0 <= comp(dice1,face1,face4) <= 1
 0 <= comp(dice1,face1,face5) <= 1
 0 <= comp(dice1,face1,face6) <= 1
 0 <= comp(dice1,face2,face1) <= 1
 0 <= comp(dice1,face2,face2) <= 1
 0 <= comp(dice1,face2,face3) <= 1
 0 <= comp(dice1,face2,face4) <= 1
 0 <= comp(dice1,face2,face5) <= 1
 0 <= comp(dice1,face2,face6) <= 1
 0 <= comp(dice1,face3,face1) <= 1
 0 <= comp(dice1,face3,face2) <= 1
 0 <= comp(dice1,face3,face3) <= 1
 0 <= comp(dice1,face3,face4) <= 1
 0 <= comp(dice1,face3,face5) <= 1
 0 <= comp(dice1,face3,face6) <= 1
 0 <= comp(dice1,face4,face1) <= 1
 0 <= comp(dice1,face4,face2) <= 1
 0 <= comp(dice1,face4,face3) <= 1
 0 <= comp(dice1,face4,face4) <= 1
 0 <= comp(dice1,face4,face5) <= 1
 0 <= comp(dice1,face4,face6) <= 1
 0 <= comp(dice1,face5,face1) <= 1
 0 <= comp(dice1,face5,face2) <= 1
 0 <= comp(dice1,face5,face3) <= 1
 0 <= comp(dice1,face5,face4) <= 1
 0 <= comp(dice1,face5,face5) <= 1
 0 <= comp(dice1,face5,face6) <= 1
 0 <= comp(dice1,face6,face1) <= 1
 0 <= comp(dice1,face6,face2) <= 1
 0 <= comp(dice1,face6,face3) <= 1
 0 <= comp(dice1,face6,face4) <= 1
 0 <= comp(dice1,face6,face5) <= 1
 0 <= comp(dice1,face6,face6) <= 1
 0 <= comp(dice2,face1,face1) <= 1
 0 <= comp(dice2,face1,face2) <= 1
 0 <= comp(dice2,face1,face3) <= 1
 0 <= comp(dice2,face1,face4) <= 1
 0 <= comp(dice2,face1,face5) <= 1
 0 <= comp(dice2,face1,face6) <= 1
 0 <= comp(dice2,face2,face1) <= 1
 0 <= comp(dice2,face2,face2) <= 1
 0 <= comp(dice2,face2,face3) <= 1
 0 <= comp(dice2,face2,face4) <= 1
 0 <= comp(dice2,face2,face5) <= 1
 0 <= comp(dice2,face2,face6) <= 1
 0 <= comp(dice2,face3,face1) <= 1
 0 <= comp(dice2,face3,face2) <= 1
 0 <= comp(dice2,face3,face3) <= 1
 0 <= comp(dice2,face3,face4) <= 1
 0 <= comp(dice2,face3,face5) <= 1
 0 <= comp(dice2,face3,face6) <= 1
 0 <= comp(dice2,face4,face1) <= 1
 0 <= comp(dice2,face4,face2) <= 1
 0 <= comp(dice2,face4,face3) <= 1
 0 <= comp(dice2,face4,face4) <= 1
 0 <= comp(dice2,face4,face5) <= 1
 0 <= comp(dice2,face4,face6) <= 1
 0 <= comp(dice2,face5,face1) <= 1
 0 <= comp(dice2,face5,face2) <= 1
 0 <= comp(dice2,face5,face3) <= 1
 0 <= comp(dice2,face5,face4) <= 1
 0 <= comp(dice2,face5,face5) <= 1
 0 <= comp(dice2,face5,face6) <= 1
 0 <= comp(dice2,face6,face1) <= 1
 0 <= comp(dice2,face6,face2) <= 1
 0 <= comp(dice2,face6,face3) <= 1
 0 <= comp(dice2,face6,face4) <= 1
 0 <= comp(dice2,face6,face5) <= 1
 0 <= comp(dice2,face6,face6) <= 1
 0 <= comp(dice3,face1,face1) <= 1
 0 <= comp(dice3,face1,face2) <= 1
 0 <= comp(dice3,face1,face3) <= 1
 0 <= comp(dice3,face1,face4) <= 1
 0 <= comp(dice3,face1,face5) <= 1
 0 <= comp(dice3,face1,face6) <= 1
 0 <= comp(dice3,face2,face1) <= 1
 0 <= comp(dice3,face2,face2) <= 1
 0 <= comp(dice3,face2,face3) <= 1
 0 <= comp(dice3,face2,face4) <= 1
 0 <= comp(dice3,face2,face5) <= 1
 0 <= comp(dice3,face2,face6) <= 1
 0 <= comp(dice3,face3,face1) <= 1
 0 <= comp(dice3,face3,face2) <= 1
 0 <= comp(dice3,face3,face3) <= 1
 0 <= comp(dice3,face3,face4) <= 1
 0 <= comp(dice3,face3,face5) <= 1
 0 <= comp(dice3,face3,face6) <= 1
 0 <= comp(dice3,face4,face1) <= 1
 0 <= comp(dice3,face4,face2) <= 1
 0 <= comp(dice3,face4,face3) <= 1
 0 <= comp(dice3,face4,face4) <= 1
 0 <= comp(dice3,face4,face5) <= 1
 0 <= comp(dice3,face4,face6) <= 1
 0 <= comp(dice3,face5,face1) <= 1
 0 <= comp(dice3,face5,face2) <= 1
 0 <= comp(dice3,face5,face3) <= 1
 0 <= comp(dice3,face5,face4) <= 1
 0 <= comp(dice3,face5,face5) <= 1
 0 <= comp(dice3,face5,face6) <= 1
 0 <= comp(dice3,face6,face1) <= 1
 0 <= comp(dice3,face6,face2) <= 1
 0 <= comp(dice3,face6,face3) <= 1
 0 <= comp(dice3,face6,face4) <= 1
 0 <= comp(dice3,face6,face5) <= 1
 0 <= comp(dice3,face6,face6) <= 1
      constobj = 0
Binaries
 comp(dice1,face1,face1)  comp(dice1,face1,face2)  comp(dice1,face1,face3) 
 comp(dice1,face1,face4)  comp(dice1,face1,face5)  comp(dice1,face1,face6) 
 comp(dice1,face2,face1)  comp(dice1,face2,face2)  comp(dice1,face2,face3) 
 comp(dice1,face2,face4)  comp(dice1,face2,face5)  comp(dice1,face2,face6) 
 comp(dice1,face3,face1)  comp(dice1,face3,face2)  comp(dice1,face3,face3) 
 comp(dice1,face3,face4)  comp(dice1,face3,face5)  comp(dice1,face3,face6) 
 comp(dice1,face4,face1)  comp(dice1,face4,face2)  comp(dice1,face4,face3) 
 comp(dice1,face4,face4)  comp(dice1,face4,face5)  comp(dice1,face4,face6) 
 comp(dice1,face5,face1)  comp(dice1,face5,face2)  comp(dice1,face5,face3) 
 comp(dice1,face5,face4)  comp(dice1,face5,face5)  comp(dice1,face5,face6) 
 comp(dice1,face6,face1)  comp(dice1,face6,face2)  comp(dice1,face6,face3) 
 comp(dice1,face6,face4)  comp(dice1,face6,face5)  comp(dice1,face6,face6) 
 comp(dice2,face1,face1)  comp(dice2,face1,face2)  comp(dice2,face1,face3) 
 comp(dice2,face1,face4)  comp(dice2,face1,face5)  comp(dice2,face1,face6) 
 comp(dice2,face2,face1)  comp(dice2,face2,face2)  comp(dice2,face2,face3) 
 comp(dice2,face2,face4)  comp(dice2,face2,face5)  comp(dice2,face2,face6) 
 comp(dice2,face3,face1)  comp(dice2,face3,face2)  comp(dice2,face3,face3) 
 comp(dice2,face3,face4)  comp(dice2,face3,face5)  comp(dice2,face3,face6) 
 comp(dice2,face4,face1)  comp(dice2,face4,face2)  comp(dice2,face4,face3) 
 comp(dice2,face4,face4)  comp(dice2,face4,face5)  comp(dice2,face4,face6) 
 comp(dice2,face5,face1)  comp(dice2,face5,face2)  comp(dice2,face5,face3) 
 comp(dice2,face5,face4)  comp(dice2,face5,face5)  comp(dice2,face5,face6) 
 comp(dice2,face6,face1)  comp(dice2,face6,face2)  comp(dice2,face6,face3) 
 comp(dice2,face6,face4)  comp(dice2,face6,face5)  comp(dice2,face6,face6) 
 comp(dice3,face1,face1)  comp(dice3,face1,face2)  comp(dice3,face1,face3) 
 comp(dice3,face1,face4)  comp(dice3,face1,face5)  comp(dice3,face1,face6) 
 comp(dice3,face2,face1)  comp(dice3,face2,face2)  comp(dice3,face2,face3) 
 comp(dice3,face2,face4)  comp(dice3,face2,face5)  comp(dice3,face2,face6) 
 comp(dice3,face3,face1)  comp(dice3,face3,face2)  comp(dice3,face3,face3) 
 comp(dice3,face3,face4)  comp(dice3,face3,face5)  comp(dice3,face3,face6) 
 comp(dice3,face4,face1)  comp(dice3,face4,face2)  comp(dice3,face4,face3) 
 comp(dice3,face4,face4)  comp(dice3,face4,face5)  comp(dice3,face4,face6) 
 comp(dice3,face5,face1)  comp(dice3,face5,face2)  comp(dice3,face5,face3) 
 comp(dice3,face5,face4)  comp(dice3,face5,face5)  comp(dice3,face5,face6) 
 comp(dice3,face6,face1)  comp(dice3,face6,face2)  comp(dice3,face6,face3) 
 comp(dice3,face6,face4)  comp(dice3,face6,face5)  comp(dice3,face6,face6) 
End
