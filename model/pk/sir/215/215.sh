#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/215

/opt/NONMEM/nm74gf/run/nmfe74 215.ctl  215.lst  -parafile=215.pnm -maxlim=2
