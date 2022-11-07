#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/108

/opt/NONMEM/nm74gf/run/nmfe74 108.ctl  108.lst  -parafile=108.pnm -maxlim=2
