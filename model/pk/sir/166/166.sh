#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/166

/opt/NONMEM/nm74gf/run/nmfe74 166.ctl  166.lst  -parafile=166.pnm -maxlim=2
