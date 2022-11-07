#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/099

/opt/NONMEM/nm74gf/run/nmfe74 099.ctl  099.lst  -parafile=099.pnm -maxlim=2
