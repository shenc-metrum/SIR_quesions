#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/110

/opt/NONMEM/nm74gf/run/nmfe74 110.ctl  110.lst  -parafile=110.pnm -maxlim=2
