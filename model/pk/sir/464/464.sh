#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/464

/opt/NONMEM/nm74gf/run/nmfe74 464.ctl  464.lst  -parafile=464.pnm -maxlim=2
