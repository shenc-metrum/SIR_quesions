#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/499

/opt/NONMEM/nm74gf/run/nmfe74 499.ctl  499.lst  -parafile=499.pnm -maxlim=2
