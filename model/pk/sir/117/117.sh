#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/117

/opt/NONMEM/nm74gf/run/nmfe74 117.ctl  117.lst  -parafile=117.pnm -maxlim=2
