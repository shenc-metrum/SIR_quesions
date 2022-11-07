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
(0.433999304830468)   ;  1 KA (1/hr) - 1.5
(4.13160087849913)   ;  2 V2 (L) - 60
(1.2064485110188)   ;  3 CL (L/hr) - 3.5
(4.1822399200332)   ;  4 V3 (L) - 70
(1.28052778251665)   ;  5 Q  (L/hr) - 4
(0.469965334413625)   ;  6 CLEGFR~CL ()
(0.0147869781520959)   ;  7 AGE~CL ()
(0.476448672570484)   ;  8 ALB~CL ()

$OMEGA BLOCK(3)
0.276303701483832                                 ;ETA(KA)
0.106872747667933 0.097530893217158                  ;ETA(V2)
0.150020952232731 0.0862569528945624 0.130758684520735   ;ETA(CL)

$SIGMA
0.0388225128319459     ; 1 pro error

$EST MAXEVAL=0 METHOD=1 INTER SIGL=6 NSIG=3 PRINT=1