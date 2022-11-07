#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/466

/opt/NONMEM/nm74gf/run/nmfe74 466.ctl  466.lst  -parafile=466.pnm -maxlim=2
