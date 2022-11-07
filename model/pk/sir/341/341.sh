#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/341

/opt/NONMEM/nm74gf/run/nmfe74 341.ctl  341.lst  -parafile=341.pnm -maxlim=2
