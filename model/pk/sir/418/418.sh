#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/418

/opt/NONMEM/nm74gf/run/nmfe74 418.ctl  418.lst  -parafile=418.pnm -maxlim=2
