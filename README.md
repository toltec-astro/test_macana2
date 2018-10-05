# Tests for macana2

A collection of scripts that produce diagnostics of macana2 results.


## Table of Content

* input/*.bstats
    bstats file that serves as input of initial guess for the beammap gaussian fitting

* input/*.nc

    beammap files

* output_idl/

    results of the idl code go here

* output/

    results of the c++ code go here

* config/ap_one.xml

    analysis parameter file for the c++ code

* config/bololist.csv

    detector listing to be used by the idl code

* run_beammap_idl.sh

    run `aztec_beammap_warpper` in the `aztec_idl_utilities` pipeline.
