#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/334

/opt/NONMEM/nm74gf/run/nmfe74 334.ctl  334.lst  -parafile=334.pnm -maxlim=2
