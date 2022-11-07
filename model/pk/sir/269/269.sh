#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/269

/opt/NONMEM/nm74gf/run/nmfe74 269.ctl  269.lst  -parafile=269.pnm -maxlim=2
