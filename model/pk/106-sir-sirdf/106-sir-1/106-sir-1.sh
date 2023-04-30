#!/bin/bash

#$ -wd /data/SIR_questions/model/pk/106-sir-sirdf/106-sir-1

/opt/NONMEM/nm75/run/nmfe75 106-sir-1.ctl  106-sir-1.lst  -parafile=106-sir-1.pnm -maxlim=2
