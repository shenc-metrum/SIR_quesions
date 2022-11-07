#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/468

/opt/NONMEM/nm74gf/run/nmfe74 468.ctl  468.lst  -parafile=468.pnm -maxlim=2
