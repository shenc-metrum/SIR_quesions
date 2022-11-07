#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/450

/opt/NONMEM/nm74gf/run/nmfe74 450.ctl  450.lst  -parafile=450.pnm -maxlim=2
