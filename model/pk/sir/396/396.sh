#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/396

/opt/NONMEM/nm74gf/run/nmfe74 396.ctl  396.lst  -parafile=396.pnm -maxlim=2
