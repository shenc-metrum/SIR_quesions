#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/275

/opt/NONMEM/nm74gf/run/nmfe74 275.ctl  275.lst  -parafile=275.pnm -maxlim=2
