#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/472

/opt/NONMEM/nm74gf/run/nmfe74 472.ctl  472.lst  -parafile=472.pnm -maxlim=2
