#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/029

/opt/NONMEM/nm74gf/run/nmfe74 029.ctl  029.lst  -parafile=029.pnm -maxlim=2
