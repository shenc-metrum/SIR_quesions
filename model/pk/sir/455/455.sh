#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/455

/opt/NONMEM/nm74gf/run/nmfe74 455.ctl  455.lst  -parafile=455.pnm -maxlim=2
