#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/479

/opt/NONMEM/nm74gf/run/nmfe74 479.ctl  479.lst  -parafile=479.pnm -maxlim=2
