#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/093

/opt/NONMEM/nm74gf/run/nmfe74 093.ctl  093.lst  -parafile=093.pnm -maxlim=2
