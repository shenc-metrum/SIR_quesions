#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/147

/opt/NONMEM/nm74gf/run/nmfe74 147.ctl  147.lst  -parafile=147.pnm -maxlim=2
