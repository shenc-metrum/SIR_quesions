#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/130

/opt/NONMEM/nm74gf/run/nmfe74 130.ctl  130.lst  -parafile=130.pnm -maxlim=2
