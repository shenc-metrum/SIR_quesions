#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/038

/opt/NONMEM/nm74gf/run/nmfe74 038.ctl  038.lst  -parafile=038.pnm -maxlim=2
