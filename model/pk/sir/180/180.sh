#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/180

/opt/NONMEM/nm74gf/run/nmfe74 180.ctl  180.lst  -parafile=180.pnm -maxlim=2
