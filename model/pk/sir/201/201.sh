#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/201

/opt/NONMEM/nm74gf/run/nmfe74 201.ctl  201.lst  -parafile=201.pnm -maxlim=2
