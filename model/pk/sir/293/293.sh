#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/293

/opt/NONMEM/nm74gf/run/nmfe74 293.ctl  293.lst  -parafile=293.pnm -maxlim=2
