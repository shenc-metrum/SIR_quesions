#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/219

/opt/NONMEM/nm74gf/run/nmfe74 219.ctl  219.lst  -parafile=219.pnm -maxlim=2
