#!/bin/bash

#$ -wd /data/SIR_questions/model/pk/106-sir-mmratio/106-sir-2

/opt/NONMEM/nm75/run/nmfe75 106-sir-2.ctl  106-sir-2.lst  -parafile=106-sir-2.pnm -maxlim=2
