#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/457

/opt/NONMEM/nm74gf/run/nmfe74 457.ctl  457.lst  -parafile=457.pnm -maxlim=2
