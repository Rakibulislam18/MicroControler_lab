
_main:

;LED.c,2 :: 		void main(){
;LED.c,3 :: 		int counter=0;
	CLRF       main_counter_L0+0
	CLRF       main_counter_L0+1
;LED.c,5 :: 		while(counter<3){
L_main0:
	MOVLW      128
	XORWF      main_counter_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main5
	MOVLW      3
	SUBWF      main_counter_L0+0, 0
L__main5:
	BTFSC      STATUS+0, 0
	GOTO       L_main1
;LED.c,6 :: 		TRISB=0X00;
	CLRF       TRISB+0
;LED.c,7 :: 		PORTB=0X00;
	CLRF       PORTB+0
;LED.c,9 :: 		PORTB.RB0=1;
	BSF        PORTB+0, 0
;LED.c,10 :: 		Delay_ms(1000);
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
;LED.c,11 :: 		PORTB.RB0=0;
	BCF        PORTB+0, 0
;LED.c,13 :: 		PORTB.RB1=1;
	BSF        PORTB+0, 1
;LED.c,14 :: 		Delay_ms(1000);
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
;LED.c,15 :: 		PORTB.RB1=0;
	BCF        PORTB+0, 1
;LED.c,16 :: 		counter++;
	INCF       main_counter_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_counter_L0+1, 1
;LED.c,19 :: 		}
	GOTO       L_main0
L_main1:
;LED.c,21 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
