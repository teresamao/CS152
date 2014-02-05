C      QUADRATIC
       PROGRAM ST
       IMPLICIT NONE
       REAL A,B,C,D,X1,X2,X1ima,X2ima
       PRINT *, 'INPUT A,B,C'
       READ *, A,B,C
       D=B*B-4.0*A*C
C      b*b-4ac>0
       IF(D.GT.0.0) THEN
        X1=(-B+SQRT(D))/(2.0*A)
        X2=(-B-SQRT(D))/(2.0*A)
        X1ima=X2ima=0.0
       PRINT *, 'DIFFERENT ROOT'
       PRINT *, 'X1=',X1
       PRINT *, 'X2=',X2
       PRINT *, 'X1ima=X2ima=',0.0
       ELSE
C      b*b-4ac=0 
        IF(D.EQ.0.0) THEN
         X1=-B/(2*A)
         X2=-B/(2*A)
         X1ima=X2ima=0.0
       PRINT *, 'SAME ROOT'
       PRINT *, 'X1=',X1
       PRINT *, 'X2=',X2
       PRINT *, 'X1ima=X2ima=',0.0
       ELSE
C      b*b-4ac<0 
        IF(D.LE.0.0) THEN
         X1=-B/(2*A)
         X2=-B/(2*A)
         X1ima=SQRT(-D)/(2*A)
         X2ima=-X1ima
       PRINT *, 'ROOT'
       PRINT *, 'X1=',X1
       PRINT *, 'X2=',X2
       PRINT *, 'X1ima=',X1ima
       PRINT *, 'X2ima=',X2ima
        END IF
       END IF
       END IF
       END
       
