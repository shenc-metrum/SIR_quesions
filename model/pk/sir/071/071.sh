#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/071

/opt/NONMEM/nm74gf/run/nmfe74 071.ctl  071.lst  -parafile=071.pnm -maxlim=2
