#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/422

/opt/NONMEM/nm74gf/run/nmfe74 422.ctl  422.lst  -parafile=422.pnm -maxlim=2
