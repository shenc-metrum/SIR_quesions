#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/288

/opt/NONMEM/nm74gf/run/nmfe74 288.ctl  288.lst  -parafile=288.pnm -maxlim=2
