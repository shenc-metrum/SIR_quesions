#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/081

/opt/NONMEM/nm74gf/run/nmfe74 081.ctl  081.lst  -parafile=081.pnm -maxlim=2
