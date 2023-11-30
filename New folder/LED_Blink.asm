
_main:

;LED_Blink.c,1 :: 		void main() {
;LED_Blink.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;LED_Blink.c,3 :: 		portb= 0x00;
	CLRF       PORTB+0
;LED_Blink.c,4 :: 		while(1){
L_main0:
;LED_Blink.c,5 :: 		portb.rb0=1;
	BSF        PORTB+0, 0
;LED_Blink.c,6 :: 		delay_ms(1000);
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
;LED_Blink.c,7 :: 		portb.rb0=0;
	BCF        PORTB+0, 0
;LED_Blink.c,8 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;LED_Blink.c,10 :: 		portb.rb1=1;
	BSF        PORTB+0, 1
;LED_Blink.c,11 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;LED_Blink.c,12 :: 		portb.rb1=0;
	BCF        PORTB+0, 1
;LED_Blink.c,13 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;LED_Blink.c,15 :: 		}
	GOTO       L_main0
;LED_Blink.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
