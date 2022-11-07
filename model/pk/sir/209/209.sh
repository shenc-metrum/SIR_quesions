#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/209

/opt/NONMEM/nm74gf/run/nmfe74 209.ctl  209.lst  -parafile=209.pnm -maxlim=2
