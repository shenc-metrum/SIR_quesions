#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/142

/opt/NONMEM/nm74gf/run/nmfe74 142.ctl  142.lst  -parafile=142.pnm -maxlim=2
