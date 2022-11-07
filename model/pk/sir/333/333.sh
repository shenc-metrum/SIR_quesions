#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/333

/opt/NONMEM/nm74gf/run/nmfe74 333.ctl  333.lst  -parafile=333.pnm -maxlim=2
