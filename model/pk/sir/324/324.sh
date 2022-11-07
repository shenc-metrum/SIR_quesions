#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/324

/opt/NONMEM/nm74gf/run/nmfe74 324.ctl  324.lst  -parafile=324.pnm -maxlim=2
