#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/306

/opt/NONMEM/nm74gf/run/nmfe74 306.ctl  306.lst  -parafile=306.pnm -maxlim=2
