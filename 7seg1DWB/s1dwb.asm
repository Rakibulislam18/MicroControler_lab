
_main:

;s1dwb.c,2 :: 		void main() {
;s1dwb.c,3 :: 		short i = 0;
	CLRF       main_i_L0+0
;s1dwb.c,4 :: 		TRISB = 0x00;
	CLRF       TRISB+0
;s1dwb.c,5 :: 		portb = 0xff;
	MOVLW      255
	MOVWF      PORTB+0
;s1dwb.c,6 :: 		TRISD = 0xff;
	MOVLW      255
	MOVWF      TRISD+0
;s1dwb.c,7 :: 		portd = 0xff;
	MOVLW      255
	MOVWF      PORTD+0
;s1dwb.c,9 :: 		while(1){
L_main0:
;s1dwb.c,10 :: 		if(portd.rd0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;s1dwb.c,11 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;s1dwb.c,12 :: 		if(portd.rd0 == 1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;s1dwb.c,13 :: 		if(i<9){
	MOVLW      128
	XORWF      main_i_L0+0, 0
	MOVWF      R0+0
	MOVLW      128
	XORLW      9
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main5
;s1dwb.c,14 :: 		i++;
	INCF       main_i_L0+0, 1
;s1dwb.c,15 :: 		}
L_main5:
;s1dwb.c,16 :: 		}
L_main4:
;s1dwb.c,17 :: 		}
L_main2:
;s1dwb.c,18 :: 		if(portd.rd1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main6
;s1dwb.c,19 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
;s1dwb.c,20 :: 		if(portd.rd1 == 1){
	BTFSS      PORTD+0, 1
	GOTO       L_main8
;s1dwb.c,21 :: 		if(i>0){
	MOVLW      128
	XORLW      0
	MOVWF      R0+0
	MOVLW      128
	XORWF      main_i_L0+0, 0
	SUBWF      R0+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;s1dwb.c,22 :: 		i--;
	DECF       main_i_L0+0, 1
;s1dwb.c,23 :: 		}
L_main9:
;s1dwb.c,24 :: 		}
L_main8:
;s1dwb.c,25 :: 		}
L_main6:
;s1dwb.c,26 :: 		portb = array_CA[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;s1dwb.c,29 :: 		}
	GOTO       L_main0
;s1dwb.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
