#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/401

/opt/NONMEM/nm74gf/run/nmfe74 401.ctl  401.lst  -parafile=401.pnm -maxlim=2
