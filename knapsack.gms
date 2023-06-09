$if not set DATA    $set DATA   "data%system.DirSep%knapsack%system.DirSep%very_small.csv"
$if not set LPFILE  $set LPFILE "D:\Projects\ProvideQ\dwave\knapsack\knapsack_cqm.lp"
$setnames %DATA% fp fn fe
$if not set METHOD  $set METHOD classic


$onEcho > knapsackScript.gms
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

data = pd.read_csv(r"%DATA%", names=['value', 'weight'], header=None)
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
cplexlp knapsack_%fn%.lp
$offEcho.file

$onecho.file>cplex.opt
writelp knapsack_%fn%_writelp.lp
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
$offEcho

$ifThenI.METHOD %METHOD%==classic
    $$call.checkErrorLevel gams knapsackScript.gms
    
$elseIfI.METHOD %METHOD%==qc
*    $$call.checkErrorLevel gams knapsackScript.gms mip=convert

    $$onEmbeddedCode Python:
    print("Begin solve")
    import re
    from datetime import datetime
    import pandas as pd
    from dwave.system import LeapHybridCQMSampler
    from dimod.lp import load as loadLP
    
    df = pd.read_csv(r"%DATA%", names=['costs', 'weights'], header=None)
    costs, weights = df['costs'], df['weights']
    
    print("Reading LP File: %LPFILE%")
    with open(r"D:\Projects\ProvideQ\dwave\dice_nonames.lp", 'rb') as f:
        #print(f.readlines())
        cqm = loadLP(f)
    
    #with open(r"%LPFILE%", 'rb') as f:
    #    cqm = loadLP(f)

    def parse_solution(sampleset, costs, weights):

        feasible_sampleset = sampleset.filter(lambda row: row.is_feasible)
    
        if not len(feasible_sampleset):
            raise ValueError("No feasible solution found")
    
        best = feasible_sampleset.first
        print(best)
    
        selected_item_indices = [key for key, val in best.sample.items() if val==1.0]
        
        loc_sel_items = [int(re.findall('[0-9]', ele)[0]) for ele in selected_item_indices]
        
        print(selected_item_indices)
        print(loc_sel_items)
        
    start = datetime.now()
    sampler = LeapHybridCQMSampler()
    print("Time taken to create sampler: ", datetime.now() - start)
    
    print("Submitting CQM to solver {}.".format(sampler.solver.name))
    sampleset = sampler.sample_cqm(cqm, label='DiceLP', time_limit=20)
    parse_solution(sampleset, costs, weights)
    
    $$offEmbeddedCode
$endIf.METHOD


