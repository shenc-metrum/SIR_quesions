#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/264

/opt/NONMEM/nm74gf/run/nmfe74 264.ctl  264.lst  -parafile=264.pnm -maxlim=2
