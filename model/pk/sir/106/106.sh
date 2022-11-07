#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/106

/opt/NONMEM/nm74gf/run/nmfe74 106.ctl  106.lst  -parafile=106.pnm -maxlim=2
