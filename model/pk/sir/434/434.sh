#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/434

/opt/NONMEM/nm74gf/run/nmfe74 434.ctl  434.lst  -parafile=434.pnm -maxlim=2
