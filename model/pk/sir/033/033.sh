#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/033

/opt/NONMEM/nm74gf/run/nmfe74 033.ctl  033.lst  -parafile=033.pnm -maxlim=2
