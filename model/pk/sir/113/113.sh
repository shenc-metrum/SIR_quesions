#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/113

/opt/NONMEM/nm74gf/run/nmfe74 113.ctl  113.lst  -parafile=113.pnm -maxlim=2
