#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/022

/opt/NONMEM/nm74gf/run/nmfe74 022.ctl  022.lst  -parafile=022.pnm -maxlim=2
