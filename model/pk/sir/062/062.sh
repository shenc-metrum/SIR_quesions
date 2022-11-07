#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/062

/opt/NONMEM/nm74gf/run/nmfe74 062.ctl  062.lst  -parafile=062.pnm -maxlim=2
