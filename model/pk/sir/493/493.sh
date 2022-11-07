#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/493

/opt/NONMEM/nm74gf/run/nmfe74 493.ctl  493.lst  -parafile=493.pnm -maxlim=2
