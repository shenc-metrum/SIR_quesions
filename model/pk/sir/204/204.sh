#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/204

/opt/NONMEM/nm74gf/run/nmfe74 204.ctl  204.lst  -parafile=204.pnm -maxlim=2
