# D-Wave Systems Quantum Computing

## Initial steps

1. Create an account on dwave-leap platform
2. Create a public repo on github and link your dwave account to that repository
3. Once done, you should recieve developer access to the Dwave's leap platform
4. The API token can be retrieved from the Dwave-Leap [dashboard](https://cloud.dwavesys.com/leap/)

## Setting up the python-dwave environment

1. Create a new python environment with python version >= 3.9.15, and appropriate python api for GAMS.
2. List of necessary python packages is given in requiremenst.txt, `pip install -r requirements.txt` should load all the necessary packages into the env.
3. Run `dwave config create` to create a config file which will store the Dwave API key.
4. Leaving every other option to default by pressing enter, paste the API key in the *Authentication token* prompt.
5. Run `dwave ping --client qpu` to test the solver access

## Running the GAMS file

The GAMS file, *knapsack.gms* accepts the following parameters

- `--DATA`  :   Provide the data in csv format for the problem. All data files are avaiable in the directory *data*. (default=very_small.csv)
- `--METHOD`:   Choose whether to solve problem using the classical or the quantum approach. [classic, qc] (default=classic)
- `--LPFILE`:   Provide the LP file which will be used to solve using the hybrid quantum solver. (default=lpFiles\knapsack_very_small_writelp.lp)
- `--LABEL` :   Provide lable for the problem when submitting the same to LEAP hybrid solver. 
- `--TIMELIMIT`: Total time limit for any solver in secs. Note: The LEAP developer-access has a quota of 20 mins/month


Note: The GAMS file generates the required .lp file for the problem (& respective data) before executing the quantum method on line 63. If there is an LP file belonging to an entirely different problem, one can provide the same using the `--LPFILE` parameter but the solution would not be parsed as wanted. To not get any errors during such a scenario comment out the lines from 98 to 103.


Useful links:

1. Dwave ocean API [documentation](https://docs.ocean.dwavesys.com/en/stable/index.html)
2. Dwave [Github](https://github.com/dwavesystems)


