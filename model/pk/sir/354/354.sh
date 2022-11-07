#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/354

/opt/NONMEM/nm74gf/run/nmfe74 354.ctl  354.lst  -parafile=354.pnm -maxlim=2
