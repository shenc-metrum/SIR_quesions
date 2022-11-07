#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/410

/opt/NONMEM/nm74gf/run/nmfe74 410.ctl  410.lst  -parafile=410.pnm -maxlim=2
