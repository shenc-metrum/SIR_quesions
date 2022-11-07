#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/486

/opt/NONMEM/nm74gf/run/nmfe74 486.ctl  486.lst  -parafile=486.pnm -maxlim=2
