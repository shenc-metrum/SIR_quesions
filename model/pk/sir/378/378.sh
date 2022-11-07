#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/378

/opt/NONMEM/nm74gf/run/nmfe74 378.ctl  378.lst  -parafile=378.pnm -maxlim=2
