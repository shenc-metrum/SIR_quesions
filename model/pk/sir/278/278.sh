#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/278

/opt/NONMEM/nm74gf/run/nmfe74 278.ctl  278.lst  -parafile=278.pnm -maxlim=2
