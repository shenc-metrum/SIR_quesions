#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/044

/opt/NONMEM/nm74gf/run/nmfe74 044.ctl  044.lst  -parafile=044.pnm -maxlim=2
