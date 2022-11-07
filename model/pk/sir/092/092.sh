#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/092

/opt/NONMEM/nm74gf/run/nmfe74 092.ctl  092.lst  -parafile=092.pnm -maxlim=2
