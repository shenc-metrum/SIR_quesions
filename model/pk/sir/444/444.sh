#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/444

/opt/NONMEM/nm74gf/run/nmfe74 444.ctl  444.lst  -parafile=444.pnm -maxlim=2
