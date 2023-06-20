\ENCODING=ISO-8859-1
\Problem name: gamsmodel

Minimize
 _obj: - 10 x(b0) - x(b1) + constobj
Subject To
 weight: 5 x(b0) + 7 x(b1) <= 9
Bounds
 0 <= x(b0) <= 1
 0 <= x(b1) <= 1
      constobj = 0
Binaries
 x(b0)  x(b1) 
End
