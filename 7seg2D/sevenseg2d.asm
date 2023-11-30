
_main:

;sevenseg2d.c,2 :: 		void main() {
;sevenseg2d.c,3 :: 		int i=0,j;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;sevenseg2d.c,5 :: 		TRISB=0x00;
	CLRF       TRISB+0
;sevenseg2d.c,6 :: 		portb=0x00;
	CLRF       PORTB+0
;sevenseg2d.c,7 :: 		TRISC=0x00;
	CLRF       TRISC+0
;sevenseg2d.c,8 :: 		portb=0x00;
	CLRF       PORTB+0
;sevenseg2d.c,10 :: 		while(1){
L_main0:
;sevenseg2d.c,11 :: 		leftDigit=i/10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      main_leftDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_leftDigit_L0+1
;sevenseg2d.c,12 :: 		rightDigit=i%10;
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_rightDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_rightDigit_L0+1
;sevenseg2d.c,13 :: 		for(j=1;j<=25;j++)
	MOVLW      1
	MOVWF      main_j_L0+0
	MOVLW      0
	MOVWF      main_j_L0+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_j_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main8
	MOVF       main_j_L0+0, 0
	SUBLW      25
L__main8:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;sevenseg2d.c,15 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;sevenseg2d.c,16 :: 		portb = array_CA[leftDigit];
	MOVF       main_leftDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenseg2d.c,17 :: 		delay_ms(3);
	MOVLW      8
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	NOP
	NOP
;sevenseg2d.c,18 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;sevenseg2d.c,20 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;sevenseg2d.c,21 :: 		portb = array_CA[rightDigit];
	MOVF       main_rightDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenseg2d.c,22 :: 		delay_ms(3);
	MOVLW      8
	MOVWF      R12+0
	MOVLW      201
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	NOP
	NOP
;sevenseg2d.c,23 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;sevenseg2d.c,13 :: 		for(j=1;j<=25;j++)
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;sevenseg2d.c,27 :: 		}
	GOTO       L_main2
L_main3:
;sevenseg2d.c,28 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;sevenseg2d.c,29 :: 		i = i%100;
	MOVLW      100
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       main_i_L0+0, 0
	MOVWF      R0+0
	MOVF       main_i_L0+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	MOVF       R0+1, 0
	MOVWF      main_i_L0+1
;sevenseg2d.c,31 :: 		}
	GOTO       L_main0
;sevenseg2d.c,34 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
