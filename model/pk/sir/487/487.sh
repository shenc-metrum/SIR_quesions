#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/487

/opt/NONMEM/nm74gf/run/nmfe74 487.ctl  487.lst  -parafile=487.pnm -maxlim=2
