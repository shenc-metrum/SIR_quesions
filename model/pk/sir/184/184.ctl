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
(0.451327353748588)   ;  1 KA (1/hr) - 1.5
(4.13366348269773)   ;  2 V2 (L) - 60
(1.1620289008494)   ;  3 CL (L/hr) - 3.5
(4.21005696967135)   ;  4 V3 (L) - 70
(1.33251761601804)   ;  5 Q  (L/hr) - 4
(0.489158955463893)   ;  6 CLEGFR~CL ()
(-0.0817394092642239)   ;  7 AGE~CL ()
(0.273190387998172)   ;  8 ALB~CL ()

$OMEGA BLOCK(3)
0.269092718722758                                 ;ETA(KA)
0.0693715885726848 0.078554281940589                  ;ETA(V2)
0.138636723932315 0.0700204145869245 0.12371967576581   ;ETA(CL)

$SIGMA
0.0393528417155524     ; 1 pro error

$EST MAXEVAL=0 METHOD=1 INTER SIGL=6 NSIG=3 PRINT=1