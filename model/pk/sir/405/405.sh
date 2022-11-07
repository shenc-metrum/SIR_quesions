#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/405

/opt/NONMEM/nm74gf/run/nmfe74 405.ctl  405.lst  -parafile=405.pnm -maxlim=2
