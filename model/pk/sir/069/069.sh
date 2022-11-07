#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/069

/opt/NONMEM/nm74gf/run/nmfe74 069.ctl  069.lst  -parafile=069.pnm -maxlim=2
