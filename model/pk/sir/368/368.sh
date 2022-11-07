#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/368

/opt/NONMEM/nm74gf/run/nmfe74 368.ctl  368.lst  -parafile=368.pnm -maxlim=2
