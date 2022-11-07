#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/095

/opt/NONMEM/nm74gf/run/nmfe74 095.ctl  095.lst  -parafile=095.pnm -maxlim=2
