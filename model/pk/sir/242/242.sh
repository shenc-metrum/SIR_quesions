#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/242

/opt/NONMEM/nm74gf/run/nmfe74 242.ctl  242.lst  -parafile=242.pnm -maxlim=2
