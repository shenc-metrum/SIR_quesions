#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/109

/opt/NONMEM/nm74gf/run/nmfe74 109.ctl  109.lst  -parafile=109.pnm -maxlim=2
