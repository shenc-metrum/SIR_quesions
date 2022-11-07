#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/189

/opt/NONMEM/nm74gf/run/nmfe74 189.ctl  189.lst  -parafile=189.pnm -maxlim=2
