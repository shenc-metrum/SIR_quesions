#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/263

/opt/NONMEM/nm74gf/run/nmfe74 263.ctl  263.lst  -parafile=263.pnm -maxlim=2
