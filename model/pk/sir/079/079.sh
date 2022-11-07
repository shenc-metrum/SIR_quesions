#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/079

/opt/NONMEM/nm74gf/run/nmfe74 079.ctl  079.lst  -parafile=079.pnm -maxlim=2
