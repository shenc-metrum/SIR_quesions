#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/415

/opt/NONMEM/nm74gf/run/nmfe74 415.ctl  415.lst  -parafile=415.pnm -maxlim=2
