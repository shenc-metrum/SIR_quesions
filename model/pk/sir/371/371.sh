#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/371

/opt/NONMEM/nm74gf/run/nmfe74 371.ctl  371.lst  -parafile=371.pnm -maxlim=2
