#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/055

/opt/NONMEM/nm74gf/run/nmfe74 055.ctl  055.lst  -parafile=055.pnm -maxlim=2
