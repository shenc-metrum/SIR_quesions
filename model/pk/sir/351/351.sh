#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/351

/opt/NONMEM/nm74gf/run/nmfe74 351.ctl  351.lst  -parafile=351.pnm -maxlim=2
