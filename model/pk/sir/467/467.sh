#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/467

/opt/NONMEM/nm74gf/run/nmfe74 467.ctl  467.lst  -parafile=467.pnm -maxlim=2
