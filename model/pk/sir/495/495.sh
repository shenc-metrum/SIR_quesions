#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/495

/opt/NONMEM/nm74gf/run/nmfe74 495.ctl  495.lst  -parafile=495.pnm -maxlim=2
