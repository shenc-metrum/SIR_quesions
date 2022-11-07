#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/250

/opt/NONMEM/nm74gf/run/nmfe74 250.ctl  250.lst  -parafile=250.pnm -maxlim=2
