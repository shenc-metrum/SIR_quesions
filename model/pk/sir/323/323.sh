#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/323

/opt/NONMEM/nm74gf/run/nmfe74 323.ctl  323.lst  -parafile=323.pnm -maxlim=2
