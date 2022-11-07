#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/442

/opt/NONMEM/nm74gf/run/nmfe74 442.ctl  442.lst  -parafile=442.pnm -maxlim=2
