#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/280

/opt/NONMEM/nm74gf/run/nmfe74 280.ctl  280.lst  -parafile=280.pnm -maxlim=2
