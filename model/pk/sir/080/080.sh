#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/080

/opt/NONMEM/nm74gf/run/nmfe74 080.ctl  080.lst  -parafile=080.pnm -maxlim=2
