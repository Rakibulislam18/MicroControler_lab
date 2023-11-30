
_main:

;Relay.c,1 :: 		void main() {
;Relay.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;Relay.c,3 :: 		portb=0x00;
	CLRF       PORTB+0
;Relay.c,4 :: 		while(1){
L_main0:
;Relay.c,5 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;Relay.c,6 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
;Relay.c,7 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;Relay.c,8 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
;Relay.c,10 :: 		portb.f1=1;
	BSF        PORTB+0, 1
;Relay.c,11 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
;Relay.c,12 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;Relay.c,13 :: 		delay_ms(100);
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
;Relay.c,15 :: 		}
	GOTO       L_main0
;Relay.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
