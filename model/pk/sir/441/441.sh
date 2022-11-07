#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/441

/opt/NONMEM/nm74gf/run/nmfe74 441.ctl  441.lst  -parafile=441.pnm -maxlim=2
