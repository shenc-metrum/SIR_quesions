#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/344

/opt/NONMEM/nm74gf/run/nmfe74 344.ctl  344.lst  -parafile=344.pnm -maxlim=2
