#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/482

/opt/NONMEM/nm74gf/run/nmfe74 482.ctl  482.lst  -parafile=482.pnm -maxlim=2
