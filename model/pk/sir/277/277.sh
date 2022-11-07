#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/277

/opt/NONMEM/nm74gf/run/nmfe74 277.ctl  277.lst  -parafile=277.pnm -maxlim=2
