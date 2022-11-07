#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/373

/opt/NONMEM/nm74gf/run/nmfe74 373.ctl  373.lst  -parafile=373.pnm -maxlim=2
