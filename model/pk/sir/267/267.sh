#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/267

/opt/NONMEM/nm74gf/run/nmfe74 267.ctl  267.lst  -parafile=267.pnm -maxlim=2
