#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/161

/opt/NONMEM/nm74gf/run/nmfe74 161.ctl  161.lst  -parafile=161.pnm -maxlim=2
