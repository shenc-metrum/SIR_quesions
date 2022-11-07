#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/273

/opt/NONMEM/nm74gf/run/nmfe74 273.ctl  273.lst  -parafile=273.pnm -maxlim=2
