#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/083

/opt/NONMEM/nm74gf/run/nmfe74 083.ctl  083.lst  -parafile=083.pnm -maxlim=2
