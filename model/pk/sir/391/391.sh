#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/391

/opt/NONMEM/nm74gf/run/nmfe74 391.ctl  391.lst  -parafile=391.pnm -maxlim=2
