#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/461

/opt/NONMEM/nm74gf/run/nmfe74 461.ctl  461.lst  -parafile=461.pnm -maxlim=2
