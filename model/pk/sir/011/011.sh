#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/011

/opt/NONMEM/nm74gf/run/nmfe74 011.ctl  011.lst  -parafile=011.pnm -maxlim=2
