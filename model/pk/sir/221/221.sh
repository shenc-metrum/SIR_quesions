#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/221

/opt/NONMEM/nm74gf/run/nmfe74 221.ctl  221.lst  -parafile=221.pnm -maxlim=2
