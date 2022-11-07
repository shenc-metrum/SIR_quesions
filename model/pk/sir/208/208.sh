#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/208

/opt/NONMEM/nm74gf/run/nmfe74 208.ctl  208.lst  -parafile=208.pnm -maxlim=2
