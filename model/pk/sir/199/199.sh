#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/199

/opt/NONMEM/nm74gf/run/nmfe74 199.ctl  199.lst  -parafile=199.pnm -maxlim=2
