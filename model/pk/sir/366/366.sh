#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/366

/opt/NONMEM/nm74gf/run/nmfe74 366.ctl  366.lst  -parafile=366.pnm -maxlim=2
