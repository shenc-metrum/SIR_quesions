#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/085

/opt/NONMEM/nm74gf/run/nmfe74 085.ctl  085.lst  -parafile=085.pnm -maxlim=2
