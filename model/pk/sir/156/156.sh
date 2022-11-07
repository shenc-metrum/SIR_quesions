#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/156

/opt/NONMEM/nm74gf/run/nmfe74 156.ctl  156.lst  -parafile=156.pnm -maxlim=2
