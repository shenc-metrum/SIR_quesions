#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/249

/opt/NONMEM/nm74gf/run/nmfe74 249.ctl  249.lst  -parafile=249.pnm -maxlim=2
