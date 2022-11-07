#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/012

/opt/NONMEM/nm74gf/run/nmfe74 012.ctl  012.lst  -parafile=012.pnm -maxlim=2
