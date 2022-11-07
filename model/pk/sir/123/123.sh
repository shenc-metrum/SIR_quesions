#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/123

/opt/NONMEM/nm74gf/run/nmfe74 123.ctl  123.lst  -parafile=123.pnm -maxlim=2
