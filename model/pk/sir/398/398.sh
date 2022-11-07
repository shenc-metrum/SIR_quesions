#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/398

/opt/NONMEM/nm74gf/run/nmfe74 398.ctl  398.lst  -parafile=398.pnm -maxlim=2
