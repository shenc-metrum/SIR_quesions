#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/350

/opt/NONMEM/nm74gf/run/nmfe74 350.ctl  350.lst  -parafile=350.pnm -maxlim=2
