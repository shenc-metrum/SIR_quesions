#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/496

/opt/NONMEM/nm74gf/run/nmfe74 496.ctl  496.lst  -parafile=496.pnm -maxlim=2
