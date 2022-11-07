#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/172

/opt/NONMEM/nm74gf/run/nmfe74 172.ctl  172.lst  -parafile=172.pnm -maxlim=2
