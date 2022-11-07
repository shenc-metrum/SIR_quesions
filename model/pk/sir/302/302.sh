#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/302

/opt/NONMEM/nm74gf/run/nmfe74 302.ctl  302.lst  -parafile=302.pnm -maxlim=2
