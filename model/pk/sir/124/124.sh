#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/124

/opt/NONMEM/nm74gf/run/nmfe74 124.ctl  124.lst  -parafile=124.pnm -maxlim=2
