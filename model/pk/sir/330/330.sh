#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/330

/opt/NONMEM/nm74gf/run/nmfe74 330.ctl  330.lst  -parafile=330.pnm -maxlim=2
