#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/286

/opt/NONMEM/nm74gf/run/nmfe74 286.ctl  286.lst  -parafile=286.pnm -maxlim=2
