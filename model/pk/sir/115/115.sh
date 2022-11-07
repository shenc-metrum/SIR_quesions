#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/115

/opt/NONMEM/nm74gf/run/nmfe74 115.ctl  115.lst  -parafile=115.pnm -maxlim=2
