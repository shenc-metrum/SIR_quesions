#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/144

/opt/NONMEM/nm74gf/run/nmfe74 144.ctl  144.lst  -parafile=144.pnm -maxlim=2
