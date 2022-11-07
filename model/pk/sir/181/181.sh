#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/181

/opt/NONMEM/nm74gf/run/nmfe74 181.ctl  181.lst  -parafile=181.pnm -maxlim=2
