#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/321

/opt/NONMEM/nm74gf/run/nmfe74 321.ctl  321.lst  -parafile=321.pnm -maxlim=2
