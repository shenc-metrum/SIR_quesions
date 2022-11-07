#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/438

/opt/NONMEM/nm74gf/run/nmfe74 438.ctl  438.lst  -parafile=438.pnm -maxlim=2
