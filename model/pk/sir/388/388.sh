#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/388

/opt/NONMEM/nm74gf/run/nmfe74 388.ctl  388.lst  -parafile=388.pnm -maxlim=2
