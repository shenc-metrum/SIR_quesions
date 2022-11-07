#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/170

/opt/NONMEM/nm74gf/run/nmfe74 170.ctl  170.lst  -parafile=170.pnm -maxlim=2
