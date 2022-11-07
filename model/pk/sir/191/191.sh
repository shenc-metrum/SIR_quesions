#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/191

/opt/NONMEM/nm74gf/run/nmfe74 191.ctl  191.lst  -parafile=191.pnm -maxlim=2
