#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/469

/opt/NONMEM/nm74gf/run/nmfe74 469.ctl  469.lst  -parafile=469.pnm -maxlim=2
