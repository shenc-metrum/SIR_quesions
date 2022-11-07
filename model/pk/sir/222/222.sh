#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/222

/opt/NONMEM/nm74gf/run/nmfe74 222.ctl  222.lst  -parafile=222.pnm -maxlim=2
