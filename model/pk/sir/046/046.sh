#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/046

/opt/NONMEM/nm74gf/run/nmfe74 046.ctl  046.lst  -parafile=046.pnm -maxlim=2
