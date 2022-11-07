#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/303

/opt/NONMEM/nm74gf/run/nmfe74 303.ctl  303.lst  -parafile=303.pnm -maxlim=2
