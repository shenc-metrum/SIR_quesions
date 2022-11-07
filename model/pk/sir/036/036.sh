#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/036

/opt/NONMEM/nm74gf/run/nmfe74 036.ctl  036.lst  -parafile=036.pnm -maxlim=2
