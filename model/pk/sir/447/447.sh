#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/447

/opt/NONMEM/nm74gf/run/nmfe74 447.ctl  447.lst  -parafile=447.pnm -maxlim=2
