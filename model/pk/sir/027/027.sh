#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/027

/opt/NONMEM/nm74gf/run/nmfe74 027.ctl  027.lst  -parafile=027.pnm -maxlim=2
