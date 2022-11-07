#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/026

/opt/NONMEM/nm74gf/run/nmfe74 026.ctl  026.lst  -parafile=026.pnm -maxlim=2
