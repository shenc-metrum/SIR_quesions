#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/020

/opt/NONMEM/nm74gf/run/nmfe74 020.ctl  020.lst  -parafile=020.pnm -maxlim=2
