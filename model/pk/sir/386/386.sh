#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/386

/opt/NONMEM/nm74gf/run/nmfe74 386.ctl  386.lst  -parafile=386.pnm -maxlim=2
