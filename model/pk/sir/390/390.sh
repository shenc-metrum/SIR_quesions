#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/390

/opt/NONMEM/nm74gf/run/nmfe74 390.ctl  390.lst  -parafile=390.pnm -maxlim=2
