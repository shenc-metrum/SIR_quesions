#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/030

/opt/NONMEM/nm74gf/run/nmfe74 030.ctl  030.lst  -parafile=030.pnm -maxlim=2
