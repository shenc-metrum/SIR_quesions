#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/458

/opt/NONMEM/nm74gf/run/nmfe74 458.ctl  458.lst  -parafile=458.pnm -maxlim=2
