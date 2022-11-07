#!/bin/bash

#$ -wd /data/SIR_quesions/model/pk/sir/413

/opt/NONMEM/nm74gf/run/nmfe74 413.ctl  413.lst  -parafile=413.pnm -maxlim=2
