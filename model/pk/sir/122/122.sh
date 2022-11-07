#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/122

/opt/NONMEM/nm74gf/run/nmfe74 122.ctl  122.lst  -parafile=122.pnm -maxlim=2
