#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/261

/opt/NONMEM/nm74gf/run/nmfe74 261.ctl  261.lst  -parafile=261.pnm -maxlim=2
