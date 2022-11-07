#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/131

/opt/NONMEM/nm74gf/run/nmfe74 131.ctl  131.lst  -parafile=131.pnm -maxlim=2
