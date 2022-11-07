#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/370

/opt/NONMEM/nm74gf/run/nmfe74 370.ctl  370.lst  -parafile=370.pnm -maxlim=2
