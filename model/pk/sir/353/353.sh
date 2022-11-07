#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/353

/opt/NONMEM/nm74gf/run/nmfe74 353.ctl  353.lst  -parafile=353.pnm -maxlim=2
