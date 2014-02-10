C     ===== QUADRATIC FORMULA PROGRAM =====
C
C     CALCULATE QUADRATIC EQUATION WITH ONE VARIABLE
C     USING QUADRATIC FORMULA. EACH EQUATION HAS A
C     SOLUTION OF (X1 REAL, X1 IMG) AND
C     (X2 REAL, X2 IMG).
C
C     AUTHOR: Peiyi Mao, Yang Peng, Garindra Prahandono
C     DATE: 9/2/2014
C
	  DOUBLE PRECISION A, B, C, D, X1R, X2R, X1I, X2I
      INTEGER I, J, K
      CHARACTER S1(2, 7)
C
C     PRINT HEADER
      WRITE(6,50)
   50 FORMAT(/,'COUNT',10X,'A',13X,'B',15X'C',10X,'X1 REAL'
     ,9X,'X1 IMG',8X,'X2 REAL',8X,'X2 IMG',/)
C
      I = 1
  100 READ (5, 105) A, B, C
  105 FORMAT (3F10.0, 3F10.0, 3F10.0)
C
C
      IF (A .EQ. 0.0) GOTO 500
      D = B * B - 4.0 * A * C
C
C     GREATER THAN ZERO
      IF (D .LE. 0.0) GOTO 135
  120 X1R = (-B + DSQRT(D)) / (2.0 * A)
      X2R = (-B - DSQRT(D)) / (2.0 * A)
      X1I = 0.0
      X2I = 0.0
      WRITE (6, 125) I, A, B, C, X1R, X2R
  125 FORMAT (I4, ':', 4(1PE15.4), 15X, 1PE15.4)
      GOTO 450
C
C     EQUAL TO ZERO
  135 IF (D .LT. 0.0) GOTO 150
  140 X1R = -B / (2.0 * A)
      X2R = -B / (2.0 * A)
      X1I = 0.0
      X2I = 0.0
      WRITE (6, 145) I, A, B, C, X1R, X2R
  145 FORMAT (I4, ':', 4(1PE15.4), 15X, 1PE15.4)
      GOTO 450
C
C     LESS THAN ZERO
  150 X1R = -B / (2 * A)
      X2R = -B / (2 * A)
      X1I = DSQRT(-D) / (2.0 * A)
      X2I = -X1I
      IF (X1R .NE. 0.0 .AND. X2R .NE. 0.0) GOTO 160
      WRITE (6, 155) I, A, B, C, X1I, X2I
  155 FORMAT (I4, ':', 3(1PE15.4), 15X, 1PE15.4, 15X, 1PE15.4)
  160 WRITE (6, 165) I, A, B, C, X1R, X1I, X2R, X2I
  165 FORMAT (I4, ':', 7(1PE15.4))
C
  450 I = I + 1
      GOTO 100
C
  500 WRITE (6, 510) I
  510 FORMAT (/, ' END OF PROGRAM: ', I2, ' CARDS READ.')
C
      STOP
      END