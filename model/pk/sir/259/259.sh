#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/259

/opt/NONMEM/nm74gf/run/nmfe74 259.ctl  259.lst  -parafile=259.pnm -maxlim=2
