#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/294

/opt/NONMEM/nm74gf/run/nmfe74 294.ctl  294.lst  -parafile=294.pnm -maxlim=2
