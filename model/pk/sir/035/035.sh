#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/035

/opt/NONMEM/nm74gf/run/nmfe74 035.ctl  035.lst  -parafile=035.pnm -maxlim=2
