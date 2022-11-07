#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/428

/opt/NONMEM/nm74gf/run/nmfe74 428.ctl  428.lst  -parafile=428.pnm -maxlim=2
