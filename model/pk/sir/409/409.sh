#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/409

/opt/NONMEM/nm74gf/run/nmfe74 409.ctl  409.lst  -parafile=409.pnm -maxlim=2
