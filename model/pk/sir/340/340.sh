#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/340

/opt/NONMEM/nm74gf/run/nmfe74 340.ctl  340.lst  -parafile=340.pnm -maxlim=2
