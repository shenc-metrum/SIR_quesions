#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/325

/opt/NONMEM/nm74gf/run/nmfe74 325.ctl  325.lst  -parafile=325.pnm -maxlim=2
