#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/017

/opt/NONMEM/nm74gf/run/nmfe74 017.ctl  017.lst  -parafile=017.pnm -maxlim=2
