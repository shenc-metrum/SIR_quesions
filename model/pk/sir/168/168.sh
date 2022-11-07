#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/168

/opt/NONMEM/nm74gf/run/nmfe74 168.ctl  168.lst  -parafile=168.pnm -maxlim=2
