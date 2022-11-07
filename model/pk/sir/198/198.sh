#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/198

/opt/NONMEM/nm74gf/run/nmfe74 198.ctl  198.lst  -parafile=198.pnm -maxlim=2
