#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/337

/opt/NONMEM/nm74gf/run/nmfe74 337.ctl  337.lst  -parafile=337.pnm -maxlim=2
