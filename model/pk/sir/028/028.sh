#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/028

/opt/NONMEM/nm74gf/run/nmfe74 028.ctl  028.lst  -parafile=028.pnm -maxlim=2
