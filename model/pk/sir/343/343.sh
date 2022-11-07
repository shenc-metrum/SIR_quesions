#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/343

/opt/NONMEM/nm74gf/run/nmfe74 343.ctl  343.lst  -parafile=343.pnm -maxlim=2
