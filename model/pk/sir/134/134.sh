#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/134

/opt/NONMEM/nm74gf/run/nmfe74 134.ctl  134.lst  -parafile=134.pnm -maxlim=2
