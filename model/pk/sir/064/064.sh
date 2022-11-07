#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/064

/opt/NONMEM/nm74gf/run/nmfe74 064.ctl  064.lst  -parafile=064.pnm -maxlim=2
