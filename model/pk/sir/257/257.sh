#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/257

/opt/NONMEM/nm74gf/run/nmfe74 257.ctl  257.lst  -parafile=257.pnm -maxlim=2
