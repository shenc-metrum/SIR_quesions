#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/430

/opt/NONMEM/nm74gf/run/nmfe74 430.ctl  430.lst  -parafile=430.pnm -maxlim=2
