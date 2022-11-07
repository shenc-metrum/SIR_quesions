#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/066

/opt/NONMEM/nm74gf/run/nmfe74 066.ctl  066.lst  -parafile=066.pnm -maxlim=2
