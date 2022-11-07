#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/463

/opt/NONMEM/nm74gf/run/nmfe74 463.ctl  463.lst  -parafile=463.pnm -maxlim=2
