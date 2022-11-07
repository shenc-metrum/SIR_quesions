#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/421

/opt/NONMEM/nm74gf/run/nmfe74 421.ctl  421.lst  -parafile=421.pnm -maxlim=2
