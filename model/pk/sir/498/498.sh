#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/498

/opt/NONMEM/nm74gf/run/nmfe74 498.ctl  498.lst  -parafile=498.pnm -maxlim=2
