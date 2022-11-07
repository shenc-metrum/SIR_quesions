#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/052

/opt/NONMEM/nm74gf/run/nmfe74 052.ctl  052.lst  -parafile=052.pnm -maxlim=2
