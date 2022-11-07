#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/449

/opt/NONMEM/nm74gf/run/nmfe74 449.ctl  449.lst  -parafile=449.pnm -maxlim=2
