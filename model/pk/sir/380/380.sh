#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/380

/opt/NONMEM/nm74gf/run/nmfe74 380.ctl  380.lst  -parafile=380.pnm -maxlim=2
