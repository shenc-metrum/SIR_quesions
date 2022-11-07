#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/037

/opt/NONMEM/nm74gf/run/nmfe74 037.ctl  037.lst  -parafile=037.pnm -maxlim=2
