#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/255

/opt/NONMEM/nm74gf/run/nmfe74 255.ctl  255.lst  -parafile=255.pnm -maxlim=2
