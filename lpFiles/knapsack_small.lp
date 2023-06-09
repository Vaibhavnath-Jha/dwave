\ MIP written by GAMS Convert at 05/31/23 08:26:58
\
\ Equation counts
\     Total        E        G        L        N        X        C        B
\         2        1        0        1        0        0        0        0
\
\ Variable counts
\                  x        b        i      s1s      s2s       sc       si
\     Total     cont   binary  integer     sos1     sos2    scont     sint
\         8        1        7        0        0        0        0        0
\ FX      0
\
\ Nonzero counts
\     Total    const       NL
\        15       15        0

Minimize
 obj: -35 b1 - 85 b2 - 30 b3 - 50 b4 - 70 b5 - 80 b6 - 55 b7

Subject To
 e2: 12 b1 + 27 b2 + 11 b3 + 17 b4 + 20 b5 + 10 b6 + 15 b7 <= 89

Bounds
 0 <= b1 <= 1
 0 <= b2 <= 1
 0 <= b3 <= 1
 0 <= b4 <= 1
 0 <= b5 <= 1
 0 <= b6 <= 1
 0 <= b7 <= 1

Binaries
 b1 b2 b3 b4 b5 b6 b7

End
