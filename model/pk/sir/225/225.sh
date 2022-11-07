#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/225

/opt/NONMEM/nm74gf/run/nmfe74 225.ctl  225.lst  -parafile=225.pnm -maxlim=2
