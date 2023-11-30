
_main:

;Seven2dWb.c,3 :: 		void main() {
;Seven2dWb.c,4 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;Seven2dWb.c,6 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;Seven2dWb.c,7 :: 		portb = 0x00;
	CLRF       PORTB+0
;Seven2dWb.c,8 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Seven2dWb.c,9 :: 		portc = 0x00;
	CLRF       PORTC+0
;Seven2dWb.c,11 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;Seven2dWb.c,14 :: 		while(1)
L_main0:
;Seven2dWb.c,16 :: 		leftDigit=i/10;
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
	MOVWF      FLOC__main+0
	MOVF       R0+1, 0
	MOVWF      FLOC__main+1
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
;Seven2dWb.c,17 :: 		rightDigit=i%10;
	MOVF       R0+0, 0
	MOVWF      main_rightDigit_L0+0
	MOVF       R0+1, 0
	MOVWF      main_rightDigit_L0+1
;Seven2dWb.c,18 :: 		portb = array_CA[leftDigit];
	MOVF       FLOC__main+0, 0
	ADDLW      _array_CA+0
	MOVWF      R0+0
	MOVF       R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven2dWb.c,19 :: 		portc.f0=1;
	BSF        PORTC+0, 0
;Seven2dWb.c,20 :: 		portb = array_CA[leftDigit];
	MOVF       R0+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven2dWb.c,21 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;Seven2dWb.c,22 :: 		portc.f0=0;
	BCF        PORTC+0, 0
;Seven2dWb.c,24 :: 		portc.f1=1;
	BSF        PORTC+0, 1
;Seven2dWb.c,25 :: 		portb = array_CA[rightDigit];
	MOVF       main_rightDigit_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;Seven2dWb.c,26 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;Seven2dWb.c,27 :: 		portc.f1=0;
	BCF        PORTC+0, 1
;Seven2dWb.c,29 :: 		if(portd.f0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;Seven2dWb.c,30 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
;Seven2dWb.c,31 :: 		if(portd.f0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main6
;Seven2dWb.c,32 :: 		if(i<99){
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main13
	MOVLW      99
	SUBWF      main_i_L0+0, 0
L__main13:
	BTFSC      STATUS+0, 0
	GOTO       L_main7
;Seven2dWb.c,33 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;Seven2dWb.c,34 :: 		}
L_main7:
;Seven2dWb.c,35 :: 		}
L_main6:
;Seven2dWb.c,36 :: 		}
L_main4:
;Seven2dWb.c,37 :: 		if(portd.f1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;Seven2dWb.c,38 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
;Seven2dWb.c,39 :: 		if(portd.f1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main10
;Seven2dWb.c,40 :: 		if(i>0){
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main14
	MOVF       main_i_L0+0, 0
	SUBLW      0
L__main14:
	BTFSC      STATUS+0, 0
	GOTO       L_main11
;Seven2dWb.c,41 :: 		i--;
	MOVLW      1
	SUBWF      main_i_L0+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L0+1, 1
;Seven2dWb.c,42 :: 		}
L_main11:
;Seven2dWb.c,43 :: 		}
L_main10:
;Seven2dWb.c,44 :: 		}
L_main8:
;Seven2dWb.c,46 :: 		}
	GOTO       L_main0
;Seven2dWb.c,48 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
