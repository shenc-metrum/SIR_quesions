#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/271

/opt/NONMEM/nm74gf/run/nmfe74 271.ctl  271.lst  -parafile=271.pnm -maxlim=2
