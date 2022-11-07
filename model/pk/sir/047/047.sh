#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/047

/opt/NONMEM/nm74gf/run/nmfe74 047.ctl  047.lst  -parafile=047.pnm -maxlim=2
