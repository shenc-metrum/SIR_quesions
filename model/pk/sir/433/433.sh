#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/433

/opt/NONMEM/nm74gf/run/nmfe74 433.ctl  433.lst  -parafile=433.pnm -maxlim=2
