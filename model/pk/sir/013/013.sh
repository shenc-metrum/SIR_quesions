#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/013

/opt/NONMEM/nm74gf/run/nmfe74 013.ctl  013.lst  -parafile=013.pnm -maxlim=2
