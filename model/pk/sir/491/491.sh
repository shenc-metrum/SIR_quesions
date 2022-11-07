#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/491

/opt/NONMEM/nm74gf/run/nmfe74 491.ctl  491.lst  -parafile=491.pnm -maxlim=2
