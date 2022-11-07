#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/435

/opt/NONMEM/nm74gf/run/nmfe74 435.ctl  435.lst  -parafile=435.pnm -maxlim=2
