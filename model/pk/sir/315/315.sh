#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/315

/opt/NONMEM/nm74gf/run/nmfe74 315.ctl  315.lst  -parafile=315.pnm -maxlim=2
