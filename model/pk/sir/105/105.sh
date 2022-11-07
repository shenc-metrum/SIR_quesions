#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/105

/opt/NONMEM/nm74gf/run/nmfe74 105.ctl  105.lst  -parafile=105.pnm -maxlim=2
