#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/319

/opt/NONMEM/nm74gf/run/nmfe74 319.ctl  319.lst  -parafile=319.pnm -maxlim=2
