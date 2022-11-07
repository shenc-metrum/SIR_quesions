#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/346

/opt/NONMEM/nm74gf/run/nmfe74 346.ctl  346.lst  -parafile=346.pnm -maxlim=2
