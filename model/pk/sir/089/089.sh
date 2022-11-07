#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/089

/opt/NONMEM/nm74gf/run/nmfe74 089.ctl  089.lst  -parafile=089.pnm -maxlim=2
