
_main:

;DC_Motor.c,1 :: 		void main() {
;DC_Motor.c,2 :: 		TRISB=0x00;
	CLRF       TRISB+0
;DC_Motor.c,3 :: 		portb=0x00;
	CLRF       PORTB+0
;DC_Motor.c,4 :: 		TRISD=0xff;
	MOVLW      255
	MOVWF      TRISD+0
;DC_Motor.c,5 :: 		portb.f3=1;
	BSF        PORTB+0, 3
;DC_Motor.c,6 :: 		while(1){
L_main0:
;DC_Motor.c,7 :: 		if(portd.f0=1){
	BSF        PORTD+0, 0
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;DC_Motor.c,8 :: 		delay_ms(100);
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
;DC_Motor.c,9 :: 		if(portd.f0=1) {
	BSF        PORTD+0, 0
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;DC_Motor.c,10 :: 		portb.f0=1;
	BSF        PORTB+0, 0
;DC_Motor.c,11 :: 		portb.f1=0;
	BCF        PORTB+0, 1
;DC_Motor.c,12 :: 		portb.f2=1;
	BSF        PORTB+0, 2
;DC_Motor.c,13 :: 		}
L_main4:
;DC_Motor.c,14 :: 		}
L_main2:
;DC_Motor.c,16 :: 		if(portd.f1=1){
	BSF        PORTD+0, 1
	BTFSS      PORTD+0, 1
	GOTO       L_main5
;DC_Motor.c,17 :: 		delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
;DC_Motor.c,18 :: 		if(portd.f1=1) {
	BSF        PORTD+0, 1
	BTFSS      PORTD+0, 1
	GOTO       L_main7
;DC_Motor.c,20 :: 		portb.f2=0;
	BCF        PORTB+0, 2
;DC_Motor.c,21 :: 		}
L_main7:
;DC_Motor.c,22 :: 		}
L_main5:
;DC_Motor.c,24 :: 		if(portd.f2=1){
	BSF        PORTD+0, 2
	BTFSS      PORTD+0, 2
	GOTO       L_main8
;DC_Motor.c,25 :: 		delay_ms(100);
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
;DC_Motor.c,26 :: 		if(portd.f2=1) {
	BSF        PORTD+0, 2
	BTFSS      PORTD+0, 2
	GOTO       L_main10
;DC_Motor.c,27 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;DC_Motor.c,28 :: 		portb.f1=1;
	BSF        PORTB+0, 1
;DC_Motor.c,29 :: 		portb.f2=1;
	BSF        PORTB+0, 2
;DC_Motor.c,30 :: 		}
L_main10:
;DC_Motor.c,31 :: 		}
L_main8:
;DC_Motor.c,33 :: 		if((portb.f0==1 && portb.f2==1)||(portb.f1==1 && portb.f2==1)){
	BTFSS      PORTB+0, 0
	GOTO       L__main22
	BTFSS      PORTB+0, 2
	GOTO       L__main22
	GOTO       L__main20
L__main22:
	BTFSS      PORTB+0, 1
	GOTO       L__main21
	BTFSS      PORTB+0, 2
	GOTO       L__main21
	GOTO       L__main20
L__main21:
	GOTO       L_main17
L__main20:
;DC_Motor.c,34 :: 		portb.f3=0;
	BCF        PORTB+0, 3
;DC_Motor.c,35 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main18:
	DECFSZ     R13+0, 1
	GOTO       L_main18
	DECFSZ     R12+0, 1
	GOTO       L_main18
	NOP
;DC_Motor.c,36 :: 		portb.f3=1;
	BSF        PORTB+0, 3
;DC_Motor.c,37 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main19:
	DECFSZ     R13+0, 1
	GOTO       L_main19
	DECFSZ     R12+0, 1
	GOTO       L_main19
	NOP
;DC_Motor.c,38 :: 		}
L_main17:
;DC_Motor.c,39 :: 		}
	GOTO       L_main0
;DC_Motor.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
