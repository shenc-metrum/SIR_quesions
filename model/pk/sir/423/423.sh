#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/423

/opt/NONMEM/nm74gf/run/nmfe74 423.ctl  423.lst  -parafile=423.pnm -maxlim=2
