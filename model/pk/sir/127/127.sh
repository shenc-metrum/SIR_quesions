#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/127

/opt/NONMEM/nm74gf/run/nmfe74 127.ctl  127.lst  -parafile=127.pnm -maxlim=2
