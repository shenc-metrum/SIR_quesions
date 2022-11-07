$PROBLEM SIR 106-104 + COV-effects(EGFR, AGE) on CL

$INPUT C NUM ID TIME SEQ CMT EVID AMT DV AGE WT HT EGFR ALB BMI SEX AAG
       SCR AST ALT CP TAFD TAD LDOS MDV BLQ PHASE OID

$DATA ../../../../data/derived/analysis3.csv IGNORE=(C='C', BLQ=1)

$SUBROUTINE ADVAN4 TRANS4

$PK
 
;log transformed PK parms
 
V2WT = LOG(WT/70)
CLWT = LOG(WT/70)*0.75
CLEGFR = LOG(EGFR/90)*THETA(6)
CLAGE = LOG(AGE/35)*THETA(7)
V3WT = LOG(WT/70)
QWT  = LOG(WT/70)*0.75
CLALB = LOG(ALB/4.5)*THETA(8)


KA   = EXP(THETA(1)+ETA(1))
V2   = EXP(THETA(2)+V2WT+ETA(2))
CL   = EXP(THETA(3)+CLWT+CLEGFR+CLAGE+CLALB+ETA(3))
V3   = EXP(THETA(4)+V3WT)
Q    = EXP(THETA(5)+QWT) 

S2 = V2/1000 ; dose in mcg, conc in mcg/mL

$ERROR
IPRED = F 
Y=IPRED*(1+EPS(1))

$THETA  ; log values
(0.562632350013686)   ;  1 KA (1/hr) - 1.5
(4.13270919100278)   ;  2 V2 (L) - 60
(1.19044800312944)   ;  3 CL (L/hr) - 3.5
(4.18094293756189)   ;  4 V3 (L) - 70
(1.2686608737142)   ;  5 Q  (L/hr) - 4
(0.42802056675796)   ;  6 CLEGFR~CL ()
(-0.0465742779771136)   ;  7 AGE~CL ()
(0.43190923791154)   ;  8 ALB~CL ()

$OMEGA BLOCK(3)
0.311445753855036                                 ;ETA(KA)
0.0840633323597738 0.0907426007856666                  ;ETA(V2)
0.149886888677091 0.0790024477901101 0.118630790348139   ;ETA(CL)

$SIGMA
0.0400726855661478     ; 1 pro error

$EST MAXEVAL=0 METHOD=1 INTER SIGL=6 NSIG=3 PRINT=1