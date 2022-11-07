#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/014

/opt/NONMEM/nm74gf/run/nmfe74 014.ctl  014.lst  -parafile=014.pnm -maxlim=2
