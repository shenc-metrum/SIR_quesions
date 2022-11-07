#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/400

/opt/NONMEM/nm74gf/run/nmfe74 400.ctl  400.lst  -parafile=400.pnm -maxlim=2
