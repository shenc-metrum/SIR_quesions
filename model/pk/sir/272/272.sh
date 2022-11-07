#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/272

/opt/NONMEM/nm74gf/run/nmfe74 272.ctl  272.lst  -parafile=272.pnm -maxlim=2
