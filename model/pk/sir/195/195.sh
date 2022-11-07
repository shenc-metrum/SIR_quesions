#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/195

/opt/NONMEM/nm74gf/run/nmfe74 195.ctl  195.lst  -parafile=195.pnm -maxlim=2
