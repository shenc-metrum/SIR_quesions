#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/308

/opt/NONMEM/nm74gf/run/nmfe74 308.ctl  308.lst  -parafile=308.pnm -maxlim=2
