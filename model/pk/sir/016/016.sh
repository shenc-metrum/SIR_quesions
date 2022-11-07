#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/016

/opt/NONMEM/nm74gf/run/nmfe74 016.ctl  016.lst  -parafile=016.pnm -maxlim=2
