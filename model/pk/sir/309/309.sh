#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/309

/opt/NONMEM/nm74gf/run/nmfe74 309.ctl  309.lst  -parafile=309.pnm -maxlim=2
