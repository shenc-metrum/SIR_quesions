#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/489

/opt/NONMEM/nm74gf/run/nmfe74 489.ctl  489.lst  -parafile=489.pnm -maxlim=2
