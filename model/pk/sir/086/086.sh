#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/086

/opt/NONMEM/nm74gf/run/nmfe74 086.ctl  086.lst  -parafile=086.pnm -maxlim=2
