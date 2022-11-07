#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/399

/opt/NONMEM/nm74gf/run/nmfe74 399.ctl  399.lst  -parafile=399.pnm -maxlim=2
