#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/443

/opt/NONMEM/nm74gf/run/nmfe74 443.ctl  443.lst  -parafile=443.pnm -maxlim=2
