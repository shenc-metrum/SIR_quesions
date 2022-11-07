#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/348

/opt/NONMEM/nm74gf/run/nmfe74 348.ctl  348.lst  -parafile=348.pnm -maxlim=2
