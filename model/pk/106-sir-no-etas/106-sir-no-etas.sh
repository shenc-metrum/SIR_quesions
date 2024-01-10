#!/bin/bash

#$ -wd /data/SIR_questions/model/pk/106-sir-no-etas

/opt/NONMEM/nm75/run/nmfe75 106-sir-no-etas.ctl  106-sir-no-etas.lst  -maxlim=2
