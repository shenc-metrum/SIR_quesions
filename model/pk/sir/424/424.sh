#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/424

/opt/NONMEM/nm74gf/run/nmfe74 424.ctl  424.lst  -parafile=424.pnm -maxlim=2
