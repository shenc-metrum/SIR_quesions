#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/317

/opt/NONMEM/nm74gf/run/nmfe74 317.ctl  317.lst  -parafile=317.pnm -maxlim=2
