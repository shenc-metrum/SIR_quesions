#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/018

/opt/NONMEM/nm74gf/run/nmfe74 018.ctl  018.lst  -parafile=018.pnm -maxlim=2
