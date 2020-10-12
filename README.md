# inverter demo with openlane

trying to harden a [clockless inverter](src/inverter.v)

# explore tool

to iterate over a lot of design parameters, can use the [regression tool](https://github.com/efabless/openlane/tree/master/regression_results)


    python3 run_designs.py --designs inverter --regression designs/inverter/explore  --threads 20

to try all 28 combinations of:

    FP_CORE_UTIL=(0.1 0.5 1 2 3 4 5)
    PL_TARGET_DENSITY=(0.01 0.1 0.4 0.8)

by using this [config file](explore)
