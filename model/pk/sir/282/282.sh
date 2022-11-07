#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/282

/opt/NONMEM/nm74gf/run/nmfe74 282.ctl  282.lst  -parafile=282.pnm -maxlim=2
