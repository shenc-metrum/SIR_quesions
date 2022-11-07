#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/165

/opt/NONMEM/nm74gf/run/nmfe74 165.ctl  165.lst  -parafile=165.pnm -maxlim=2
