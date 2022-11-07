#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/393

/opt/NONMEM/nm74gf/run/nmfe74 393.ctl  393.lst  -parafile=393.pnm -maxlim=2
