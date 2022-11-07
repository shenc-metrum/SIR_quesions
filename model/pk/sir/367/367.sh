#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/367

/opt/NONMEM/nm74gf/run/nmfe74 367.ctl  367.lst  -parafile=367.pnm -maxlim=2
