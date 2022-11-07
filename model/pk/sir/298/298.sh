#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/298

/opt/NONMEM/nm74gf/run/nmfe74 298.ctl  298.lst  -parafile=298.pnm -maxlim=2
