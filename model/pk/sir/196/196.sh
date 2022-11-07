#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/196

/opt/NONMEM/nm74gf/run/nmfe74 196.ctl  196.lst  -parafile=196.pnm -maxlim=2
