#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/318

/opt/NONMEM/nm74gf/run/nmfe74 318.ctl  318.lst  -parafile=318.pnm -maxlim=2
