#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/313

/opt/NONMEM/nm74gf/run/nmfe74 313.ctl  313.lst  -parafile=313.pnm -maxlim=2
