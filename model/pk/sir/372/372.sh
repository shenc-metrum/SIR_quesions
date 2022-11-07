#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/372

/opt/NONMEM/nm74gf/run/nmfe74 372.ctl  372.lst  -parafile=372.pnm -maxlim=2
