#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/151

/opt/NONMEM/nm74gf/run/nmfe74 151.ctl  151.lst  -parafile=151.pnm -maxlim=2
