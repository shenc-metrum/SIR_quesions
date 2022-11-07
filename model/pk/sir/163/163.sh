#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/163

/opt/NONMEM/nm74gf/run/nmfe74 163.ctl  163.lst  -parafile=163.pnm -maxlim=2
