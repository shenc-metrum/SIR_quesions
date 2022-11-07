#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/402

/opt/NONMEM/nm74gf/run/nmfe74 402.ctl  402.lst  -parafile=402.pnm -maxlim=2
