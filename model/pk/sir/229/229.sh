#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/229

/opt/NONMEM/nm74gf/run/nmfe74 229.ctl  229.lst  -parafile=229.pnm -maxlim=2
