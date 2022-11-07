#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/139

/opt/NONMEM/nm74gf/run/nmfe74 139.ctl  139.lst  -parafile=139.pnm -maxlim=2
