#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/054

/opt/NONMEM/nm74gf/run/nmfe74 054.ctl  054.lst  -parafile=054.pnm -maxlim=2
