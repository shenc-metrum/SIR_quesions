#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/414

/opt/NONMEM/nm74gf/run/nmfe74 414.ctl  414.lst  -parafile=414.pnm -maxlim=2
