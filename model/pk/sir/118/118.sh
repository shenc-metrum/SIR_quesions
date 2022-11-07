#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/118

/opt/NONMEM/nm74gf/run/nmfe74 118.ctl  118.lst  -parafile=118.pnm -maxlim=2
