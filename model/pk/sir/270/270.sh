#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/270

/opt/NONMEM/nm74gf/run/nmfe74 270.ctl  270.lst  -parafile=270.pnm -maxlim=2
