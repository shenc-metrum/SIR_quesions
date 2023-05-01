#!/bin/bash

#$ -wd /data/SIR_questions/model/pk/106-sir-mmratio/106-sir-4

/opt/NONMEM/nm75/run/nmfe75 106-sir-4.ctl  106-sir-4.lst  -parafile=106-sir-4.pnm -maxlim=2
