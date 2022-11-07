#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/490

/opt/NONMEM/nm74gf/run/nmfe74 490.ctl  490.lst  -parafile=490.pnm -maxlim=2
