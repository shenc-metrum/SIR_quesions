#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/359

/opt/NONMEM/nm74gf/run/nmfe74 359.ctl  359.lst  -parafile=359.pnm -maxlim=2
