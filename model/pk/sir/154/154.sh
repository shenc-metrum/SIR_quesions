#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/154

/opt/NONMEM/nm74gf/run/nmfe74 154.ctl  154.lst  -parafile=154.pnm -maxlim=2
