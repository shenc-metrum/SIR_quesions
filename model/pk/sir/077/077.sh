#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/077

/opt/NONMEM/nm74gf/run/nmfe74 077.ctl  077.lst  -parafile=077.pnm -maxlim=2
