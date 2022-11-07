#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/427

/opt/NONMEM/nm74gf/run/nmfe74 427.ctl  427.lst  -parafile=427.pnm -maxlim=2
