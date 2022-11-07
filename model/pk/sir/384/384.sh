#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/384

/opt/NONMEM/nm74gf/run/nmfe74 384.ctl  384.lst  -parafile=384.pnm -maxlim=2
