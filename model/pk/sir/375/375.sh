#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/375

/opt/NONMEM/nm74gf/run/nmfe74 375.ctl  375.lst  -parafile=375.pnm -maxlim=2
