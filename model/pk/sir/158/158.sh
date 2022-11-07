#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/158

/opt/NONMEM/nm74gf/run/nmfe74 158.ctl  158.lst  -parafile=158.pnm -maxlim=2
