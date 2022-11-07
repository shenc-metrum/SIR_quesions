#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/299

/opt/NONMEM/nm74gf/run/nmfe74 299.ctl  299.lst  -parafile=299.pnm -maxlim=2
