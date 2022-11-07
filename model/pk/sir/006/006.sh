#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/006

/opt/NONMEM/nm74gf/run/nmfe74 006.ctl  006.lst  -parafile=006.pnm -maxlim=2
