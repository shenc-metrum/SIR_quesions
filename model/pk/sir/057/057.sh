#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/057

/opt/NONMEM/nm74gf/run/nmfe74 057.ctl  057.lst  -parafile=057.pnm -maxlim=2
