#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/456

/opt/NONMEM/nm74gf/run/nmfe74 456.ctl  456.lst  -parafile=456.pnm -maxlim=2
