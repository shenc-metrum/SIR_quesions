#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/149

/opt/NONMEM/nm74gf/run/nmfe74 149.ctl  149.lst  -parafile=149.pnm -maxlim=2
