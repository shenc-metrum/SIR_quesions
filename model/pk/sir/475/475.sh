#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/475

/opt/NONMEM/nm74gf/run/nmfe74 475.ctl  475.lst  -parafile=475.pnm -maxlim=2
