
_main:

;s1d.c,2 :: 		void main() {
;s1d.c,3 :: 		int i=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;s1d.c,4 :: 		TRISB=0x00;
	CLRF       TRISB+0
;s1d.c,5 :: 		portb=0xff;
	MOVLW      255
	MOVWF      PORTB+0
;s1d.c,6 :: 		while(1)
L_main0:
;s1d.c,8 :: 		portb= array_CA[i];
	MOVF       main_i_L0+0, 0
	ADDLW      _array_CA+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;s1d.c,9 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;s1d.c,10 :: 		i=(i+1)%10;
	MOVF       main_i_L0+0, 0
	ADDLW      1
	MOVWF      R0+0
	MOVLW      0
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      main_i_L0+1, 0
	MOVWF      R0+1
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      main_i_L0+0
	MOVF       R0+1, 0
	MOVWF      main_i_L0+1
;s1d.c,12 :: 		}
	GOTO       L_main0
;s1d.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
