#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/097

/opt/NONMEM/nm74gf/run/nmfe74 097.ctl  097.lst  -parafile=097.pnm -maxlim=2
