
_main:

;multiplexer.c,2 :: 		void main() {
;multiplexer.c,3 :: 		int i=0,j=0, number=0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
	CLRF       main_number_L0+0
	CLRF       main_number_L0+1
;multiplexer.c,5 :: 		TRISB = 0x00;     //set portb as output
	CLRF       TRISB+0
;multiplexer.c,8 :: 		while(1){
L_main0:
;multiplexer.c,9 :: 		portb = number;
	MOVF       main_number_L0+0, 0
	MOVWF      PORTB+0
;multiplexer.c,10 :: 		delay_ms(100);
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
;multiplexer.c,11 :: 		number++;
	INCF       main_number_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_number_L0+1, 1
;multiplexer.c,12 :: 		i++;
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;multiplexer.c,13 :: 		j++;
	INCF       main_j_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_j_L0+1, 1
;multiplexer.c,14 :: 		if(j == 10){
	MOVLW      0
	XORWF      main_j_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      10
	XORWF      main_j_L0+0, 0
L__main6:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;multiplexer.c,15 :: 		j = 0;
	CLRF       main_j_L0+0
	CLRF       main_j_L0+1
;multiplexer.c,16 :: 		number = number + 6;
	MOVLW      6
	ADDWF      main_number_L0+0, 1
	BTFSC      STATUS+0, 0
	INCF       main_number_L0+1, 1
;multiplexer.c,17 :: 		}
L_main3:
;multiplexer.c,18 :: 		if(i==100){
	MOVLW      0
	XORWF      main_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVLW      100
	XORWF      main_i_L0+0, 0
L__main7:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;multiplexer.c,19 :: 		i = 0;
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
;multiplexer.c,20 :: 		number = 0;
	CLRF       main_number_L0+0
	CLRF       main_number_L0+1
;multiplexer.c,21 :: 		}
L_main4:
;multiplexer.c,23 :: 		}
	GOTO       L_main0
;multiplexer.c,26 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
