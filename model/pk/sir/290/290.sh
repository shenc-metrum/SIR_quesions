#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/290

/opt/NONMEM/nm74gf/run/nmfe74 290.ctl  290.lst  -parafile=290.pnm -maxlim=2
