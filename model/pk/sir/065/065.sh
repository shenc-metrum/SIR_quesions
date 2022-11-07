#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/065

/opt/NONMEM/nm74gf/run/nmfe74 065.ctl  065.lst  -parafile=065.pnm -maxlim=2
