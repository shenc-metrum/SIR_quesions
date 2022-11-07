#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/385

/opt/NONMEM/nm74gf/run/nmfe74 385.ctl  385.lst  -parafile=385.pnm -maxlim=2
