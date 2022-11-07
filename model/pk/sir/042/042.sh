#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/042

/opt/NONMEM/nm74gf/run/nmfe74 042.ctl  042.lst  -parafile=042.pnm -maxlim=2
