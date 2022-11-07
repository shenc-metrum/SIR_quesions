#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/234

/opt/NONMEM/nm74gf/run/nmfe74 234.ctl  234.lst  -parafile=234.pnm -maxlim=2
