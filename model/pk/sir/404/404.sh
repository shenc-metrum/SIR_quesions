#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/404

/opt/NONMEM/nm74gf/run/nmfe74 404.ctl  404.lst  -parafile=404.pnm -maxlim=2
