#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/063

/opt/NONMEM/nm74gf/run/nmfe74 063.ctl  063.lst  -parafile=063.pnm -maxlim=2
