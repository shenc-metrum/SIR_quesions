#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/043

/opt/NONMEM/nm74gf/run/nmfe74 043.ctl  043.lst  -parafile=043.pnm -maxlim=2
