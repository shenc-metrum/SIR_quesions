#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/440

/opt/NONMEM/nm74gf/run/nmfe74 440.ctl  440.lst  -parafile=440.pnm -maxlim=2
