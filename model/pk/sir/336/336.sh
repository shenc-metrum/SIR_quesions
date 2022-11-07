#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/336

/opt/NONMEM/nm74gf/run/nmfe74 336.ctl  336.lst  -parafile=336.pnm -maxlim=2
