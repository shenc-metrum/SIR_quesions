#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/067

/opt/NONMEM/nm74gf/run/nmfe74 067.ctl  067.lst  -parafile=067.pnm -maxlim=2
