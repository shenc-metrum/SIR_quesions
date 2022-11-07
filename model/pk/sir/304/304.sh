#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/304

/opt/NONMEM/nm74gf/run/nmfe74 304.ctl  304.lst  -parafile=304.pnm -maxlim=2
