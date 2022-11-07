#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/301

/opt/NONMEM/nm74gf/run/nmfe74 301.ctl  301.lst  -parafile=301.pnm -maxlim=2
