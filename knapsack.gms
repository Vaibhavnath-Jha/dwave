$if not set DATA        $set DATA       "data%system.DirSep%very_small.csv"
$setnames %DATA% fp fn fe
$if not set LPFILE      $set LPFILE     "knapsack_%fn%_writelp.lp"
$if not set LABEL       $set LABEL      "Knapsack - %fn%"
$if not set TIMELIMIT   $set TIMELIMIT  10
$if not set METHOD      $set METHOD     classic


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

*$onecho.file>convert.opt
*FixedMPS knapsack_%fn%_writelpfixed.mps
*$offEcho.file

$onecho.file2>convert.opt
dumpgdx knapsack_dump.gdx
$offecho.file2

Binary Variables
    x(ii)    selection of item i
    ;
    
Free Variable z  objective value;

Equations
    obj     objective function
    weight  weight constraint
    onebox  
    ;

obj..    sum(ii, v(ii)*x(ii)) =E= z;

weight.. sum(ii, w(ii)*x(ii)) =L= c;

onebox.. sum(ii, x(ii)) =L= 1;

Model knapsack /all/;
knapsack.reslim = %TIMELIMIT%;
options mip=convert;
knapsack.optfile=1;
Solve knapsack using mip minimizing z;
$offEcho

$ifThenI.METHOD %METHOD%==classic
    $$call.checkErrorLevel gams knapsackScript.gms
    
$elseIfI.METHOD %METHOD%==qc
    $$call.checkErrorLevel gams knapsackScript.gms mip=convert

    $$onEmbeddedCode Python:
    import re
    from datetime import datetime
    import pandas as pd
    from dwave.system import LeapHybridCQMSampler
    from dimod.lp import load as loadLP
    
    df = pd.read_csv(r"%DATA%", names=['costs', 'weights'], header=None)
    costs, weights = df['costs'], df['weights']
    
    print("Reading LP File: %LPFILE%")    
    with open(r"%LPFILE%", 'rb') as f:
        cqm = loadLP(f)

    def parse_solution(sampleset, costs, weights):

        feasible_sampleset = sampleset.filter(lambda row: row.is_feasible)
    
        if not len(feasible_sampleset):
            raise ValueError("No feasible solution found")
    
        best = feasible_sampleset.first
        print(best)
    
        selected_item_indices = [key for key, val in best.sample.items() if val==1.0]
        
        loc_sel_items = list({int(re.search(r'\d+', ele).group()) for ele in selected_item_indices})
      
        print(selected_item_indices)
        print(loc_sel_items)

        selected_weights = list(weights.loc[loc_sel_items])
        selected_costs = list(costs.loc[loc_sel_items])
        print("\nFound best solution at energy {}".format(best.energy))
        print("\nSelected item numbers (0-indexed):", selected_item_indices)
        print("\nSelected item weights: {}, total = {}".format(selected_weights, sum(selected_weights)))
        print("\nSelected item costs: {}, total = {}".format(selected_costs, sum(selected_costs)))
        
    start = datetime.now()
    sampler = LeapHybridCQMSampler()
    print("Time taken to create sampler: ", datetime.now() - start)
    
    print("Submitting CQM to solver {}.".format(sampler.solver.name))
    sampleset = sampler.sample_cqm(cqm, label="%LABEL%", time_limit=%TIMELIMIT%)
    parse_solution(sampleset, costs, weights)
    
    $$offEmbeddedCode
$endIf.METHOD


