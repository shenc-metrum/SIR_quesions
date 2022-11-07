#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/091

/opt/NONMEM/nm74gf/run/nmfe74 091.ctl  091.lst  -parafile=091.pnm -maxlim=2
