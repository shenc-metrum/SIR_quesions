#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/116

/opt/NONMEM/nm74gf/run/nmfe74 116.ctl  116.lst  -parafile=116.pnm -maxlim=2
