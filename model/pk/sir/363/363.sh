#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/363

/opt/NONMEM/nm74gf/run/nmfe74 363.ctl  363.lst  -parafile=363.pnm -maxlim=2
