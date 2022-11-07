#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/474

/opt/NONMEM/nm74gf/run/nmfe74 474.ctl  474.lst  -parafile=474.pnm -maxlim=2
