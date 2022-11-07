#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/419

/opt/NONMEM/nm74gf/run/nmfe74 419.ctl  419.lst  -parafile=419.pnm -maxlim=2
