#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/152

/opt/NONMEM/nm74gf/run/nmfe74 152.ctl  152.lst  -parafile=152.pnm -maxlim=2
