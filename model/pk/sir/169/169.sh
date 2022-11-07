#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/169

/opt/NONMEM/nm74gf/run/nmfe74 169.ctl  169.lst  -parafile=169.pnm -maxlim=2
