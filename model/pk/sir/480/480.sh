#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/480

/opt/NONMEM/nm74gf/run/nmfe74 480.ctl  480.lst  -parafile=480.pnm -maxlim=2
