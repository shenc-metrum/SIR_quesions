#!/bin/bash

#$ -wd /data/SIR_questions/model/pk/106-sir

/opt/NONMEM/nm75/run/nmfe75 106-sir.ctl  106-sir.lst  -maxlim=2
