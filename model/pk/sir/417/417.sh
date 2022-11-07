#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/417

/opt/NONMEM/nm74gf/run/nmfe74 417.ctl  417.lst  -parafile=417.pnm -maxlim=2
