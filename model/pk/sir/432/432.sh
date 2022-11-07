#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/432

/opt/NONMEM/nm74gf/run/nmfe74 432.ctl  432.lst  -parafile=432.pnm -maxlim=2
