#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/157

/opt/NONMEM/nm74gf/run/nmfe74 157.ctl  157.lst  -parafile=157.pnm -maxlim=2
