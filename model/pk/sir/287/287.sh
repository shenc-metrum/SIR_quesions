#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/287

/opt/NONMEM/nm74gf/run/nmfe74 287.ctl  287.lst  -parafile=287.pnm -maxlim=2
