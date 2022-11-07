#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/412

/opt/NONMEM/nm74gf/run/nmfe74 412.ctl  412.lst  -parafile=412.pnm -maxlim=2
