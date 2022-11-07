#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/088

/opt/NONMEM/nm74gf/run/nmfe74 088.ctl  088.lst  -parafile=088.pnm -maxlim=2
