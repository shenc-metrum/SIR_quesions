#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/389

/opt/NONMEM/nm74gf/run/nmfe74 389.ctl  389.lst  -parafile=389.pnm -maxlim=2
