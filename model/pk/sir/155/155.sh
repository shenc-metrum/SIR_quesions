#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/155

/opt/NONMEM/nm74gf/run/nmfe74 155.ctl  155.lst  -parafile=155.pnm -maxlim=2
