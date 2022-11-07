#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/494

/opt/NONMEM/nm74gf/run/nmfe74 494.ctl  494.lst  -parafile=494.pnm -maxlim=2
