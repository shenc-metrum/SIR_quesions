#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/048

/opt/NONMEM/nm74gf/run/nmfe74 048.ctl  048.lst  -parafile=048.pnm -maxlim=2
