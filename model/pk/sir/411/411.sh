#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/411

/opt/NONMEM/nm74gf/run/nmfe74 411.ctl  411.lst  -parafile=411.pnm -maxlim=2
