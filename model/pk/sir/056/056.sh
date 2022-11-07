#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/056

/opt/NONMEM/nm74gf/run/nmfe74 056.ctl  056.lst  -parafile=056.pnm -maxlim=2
