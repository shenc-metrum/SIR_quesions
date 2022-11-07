#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/164

/opt/NONMEM/nm74gf/run/nmfe74 164.ctl  164.lst  -parafile=164.pnm -maxlim=2
