#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/488

/opt/NONMEM/nm74gf/run/nmfe74 488.ctl  488.lst  -parafile=488.pnm -maxlim=2
