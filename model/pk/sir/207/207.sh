#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/207

/opt/NONMEM/nm74gf/run/nmfe74 207.ctl  207.lst  -parafile=207.pnm -maxlim=2
