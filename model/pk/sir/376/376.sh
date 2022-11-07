#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/376

/opt/NONMEM/nm74gf/run/nmfe74 376.ctl  376.lst  -parafile=376.pnm -maxlim=2
