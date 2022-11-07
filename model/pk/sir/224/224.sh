#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/224

/opt/NONMEM/nm74gf/run/nmfe74 224.ctl  224.lst  -parafile=224.pnm -maxlim=2
