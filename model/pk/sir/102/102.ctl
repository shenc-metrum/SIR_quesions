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
(0.400758776631691)   ;  1 KA (1/hr) - 1.5
(4.15263155895647)   ;  2 V2 (L) - 60
(1.16124411702016)   ;  3 CL (L/hr) - 3.5
(4.17797870040801)   ;  4 V3 (L) - 70
(1.29309230146166)   ;  5 Q  (L/hr) - 4
(0.44914352781745)   ;  6 CLEGFR~CL ()
(-0.0741325513142687)   ;  7 AGE~CL ()
(0.393140908696744)   ;  8 ALB~CL ()

$OMEGA BLOCK(3)
0.260480006254225                                 ;ETA(KA)
0.0759533577687964 0.0779324973500099                  ;ETA(V2)
0.147038750478277 0.0757869268086285 0.130585469482472   ;ETA(CL)

$SIGMA
0.0398108159123418     ; 1 pro error

$EST MAXEVAL=0 METHOD=1 INTER SIGL=6 NSIG=3 PRINT=1