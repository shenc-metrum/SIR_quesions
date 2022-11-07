#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/383

/opt/NONMEM/nm74gf/run/nmfe74 383.ctl  383.lst  -parafile=383.pnm -maxlim=2
