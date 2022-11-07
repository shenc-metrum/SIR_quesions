#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/448

/opt/NONMEM/nm74gf/run/nmfe74 448.ctl  448.lst  -parafile=448.pnm -maxlim=2
