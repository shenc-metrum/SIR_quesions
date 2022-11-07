#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/019

/opt/NONMEM/nm74gf/run/nmfe74 019.ctl  019.lst  -parafile=019.pnm -maxlim=2
