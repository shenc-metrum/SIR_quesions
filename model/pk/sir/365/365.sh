#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/365

/opt/NONMEM/nm74gf/run/nmfe74 365.ctl  365.lst  -parafile=365.pnm -maxlim=2
