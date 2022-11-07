#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/345

/opt/NONMEM/nm74gf/run/nmfe74 345.ctl  345.lst  -parafile=345.pnm -maxlim=2
