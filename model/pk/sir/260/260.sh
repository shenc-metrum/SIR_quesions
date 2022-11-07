#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/260

/opt/NONMEM/nm74gf/run/nmfe74 260.ctl  260.lst  -parafile=260.pnm -maxlim=2
