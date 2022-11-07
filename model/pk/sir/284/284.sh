#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/284

/opt/NONMEM/nm74gf/run/nmfe74 284.ctl  284.lst  -parafile=284.pnm -maxlim=2
