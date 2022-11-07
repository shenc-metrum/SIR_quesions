#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/206

/opt/NONMEM/nm74gf/run/nmfe74 206.ctl  206.lst  -parafile=206.pnm -maxlim=2
