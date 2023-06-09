Sets
    ii    superset of items;

Parameters
    w(ii)    weight of item i
    v(ii)    value of item i;

Scalar
    c       knapsack capacity;

$onEmbeddedCode Python:
import pandas as pd
from math import floor

data = pd.read_csv(r"data\knapsack\very_small.csv", names=['value', 'weight'], header=None)
ii = ['b'+str(i) for i in range(len(data))]
w  = [('b'+str(index), value) for index,value in data['weight'].items()]
v  = [('b'+str(index), -1*value) for index,value in data['value'].items()]
c  = [floor(0.8*(data['weight'].sum()))]

gams.set('ii', ii)
gams.set('w', w)
gams.set('v', v)
gams.set('c', c)
$offEmbeddedCode ii, w, v, c

$onecho.file>convert.opt
cplexlp knapsack_very_small.lp
$offEcho.file

$onecho.file>cplex.opt
writelp knapsack_very_small_writelp.lp
$offEcho.file

Binary Variables
    x(ii)    selection of item i
    ;
    
Free Variable z  objective value;

Equations
    obj     objective function
    weight  weight constraint
    ;

obj..    sum(ii, v(ii)*x(ii)) =E= z;

weight.. sum(ii, w(ii)*x(ii)) =L= c;

Model knapsack /all/;
options mip=cplex;
knapsack.optfile=1;
Solve knapsack using mip minimizing z;
