#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/460

/opt/NONMEM/nm74gf/run/nmfe74 460.ctl  460.lst  -parafile=460.pnm -maxlim=2
