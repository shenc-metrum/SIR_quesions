#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/436

/opt/NONMEM/nm74gf/run/nmfe74 436.ctl  436.lst  -parafile=436.pnm -maxlim=2
