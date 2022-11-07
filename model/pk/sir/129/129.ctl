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
(0.528712296140285)   ;  1 KA (1/hr) - 1.5
(4.15544176757458)   ;  2 V2 (L) - 60
(1.20227846576563)   ;  3 CL (L/hr) - 3.5
(4.21427196876335)   ;  4 V3 (L) - 70
(1.25666884545336)   ;  5 Q  (L/hr) - 4
(0.506782508668787)   ;  6 CLEGFR~CL ()
(-0.080293177773277)   ;  7 AGE~CL ()
(0.46529212405313)   ;  8 ALB~CL ()

$OMEGA BLOCK(3)
0.208148831667752                                 ;ETA(KA)
0.0716896490081973 0.0768248206462909                  ;ETA(V2)
0.124709826234352 0.0711308810603038 0.124174384776503   ;ETA(CL)

$SIGMA
0.041658887301173     ; 1 pro error

$EST MAXEVAL=0 METHOD=1 INTER SIGL=6 NSIG=3 PRINT=1