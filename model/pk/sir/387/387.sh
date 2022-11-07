#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/387

/opt/NONMEM/nm74gf/run/nmfe74 387.ctl  387.lst  -parafile=387.pnm -maxlim=2
