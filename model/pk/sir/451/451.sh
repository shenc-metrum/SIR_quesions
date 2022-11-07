#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/451

/opt/NONMEM/nm74gf/run/nmfe74 451.ctl  451.lst  -parafile=451.pnm -maxlim=2
