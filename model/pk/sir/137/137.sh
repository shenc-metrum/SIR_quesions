#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/137

/opt/NONMEM/nm74gf/run/nmfe74 137.ctl  137.lst  -parafile=137.pnm -maxlim=2
