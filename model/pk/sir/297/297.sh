#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/297

/opt/NONMEM/nm74gf/run/nmfe74 297.ctl  297.lst  -parafile=297.pnm -maxlim=2
