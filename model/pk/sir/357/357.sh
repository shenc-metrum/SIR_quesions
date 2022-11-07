#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/357

/opt/NONMEM/nm74gf/run/nmfe74 357.ctl  357.lst  -parafile=357.pnm -maxlim=2
