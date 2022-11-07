#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/040

/opt/NONMEM/nm74gf/run/nmfe74 040.ctl  040.lst  -parafile=040.pnm -maxlim=2
