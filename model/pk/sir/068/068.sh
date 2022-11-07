#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/068

/opt/NONMEM/nm74gf/run/nmfe74 068.ctl  068.lst  -parafile=068.pnm -maxlim=2
