#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/320

/opt/NONMEM/nm74gf/run/nmfe74 320.ctl  320.lst  -parafile=320.pnm -maxlim=2
