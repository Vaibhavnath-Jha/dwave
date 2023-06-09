\ MIP written by GAMS Convert at 05/31/23 08:12:04
\
\ Equation counts
\     Total        E        G        L        N        X        C        B
\         2        1        0        1        0        0        0        0
\
\ Variable counts
\                  x        b        i      s1s      s2s       sc       si
\     Total     cont   binary  integer     sos1     sos2    scont     sint
\         3        1        2        0        0        0        0        0
\ FX      0
\
\ Nonzero counts
\     Total    const       NL
\         5        5        0

Minimize
 obj: x3

Subject To
 e1: -10 b1 - b2 - x3 = 0
 e2: 5 b1 + 7 b2 <= 9

Bounds
 0 <= b1 <= 1
 0 <= b2 <= 1
 x3 Free

Binaries
 b1 b2

End
