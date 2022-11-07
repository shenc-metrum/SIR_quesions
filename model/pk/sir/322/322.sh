#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/322

/opt/NONMEM/nm74gf/run/nmfe74 322.ctl  322.lst  -parafile=322.pnm -maxlim=2
