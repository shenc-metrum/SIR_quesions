#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/358

/opt/NONMEM/nm74gf/run/nmfe74 358.ctl  358.lst  -parafile=358.pnm -maxlim=2
