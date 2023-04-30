#!/bin/bash

#$ -wd /data/SIR_questions/model/pk/106

/opt/NONMEM/nm75/run/nmfe75 106.ctl  106.lst  -maxlim=2
