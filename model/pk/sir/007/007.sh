#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/007

/opt/NONMEM/nm74gf/run/nmfe74 007.ctl  007.lst  -parafile=007.pnm -maxlim=2
