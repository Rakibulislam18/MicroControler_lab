
_getStringLength:

;lcd.c,15 :: 		int getStringLength(char *str) {
;lcd.c,16 :: 		int length = 0;
	CLRF       getStringLength_length_L0+0
	CLRF       getStringLength_length_L0+1
;lcd.c,18 :: 		while (*str != '\0') {
L_getStringLength0:
	MOVF       FARG_getStringLength_str+0, 0
	MOVWF      FSR
	MOVF       INDF+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_getStringLength1
;lcd.c,19 :: 		length++;
	INCF       getStringLength_length_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       getStringLength_length_L0+1, 1
;lcd.c,20 :: 		str++;
	INCF       FARG_getStringLength_str+0, 1
;lcd.c,21 :: 		}
	GOTO       L_getStringLength0
L_getStringLength1:
;lcd.c,23 :: 		return length;
	MOVF       getStringLength_length_L0+0, 0
	MOVWF      R0+0
	MOVF       getStringLength_length_L0+1, 0
	MOVWF      R0+1
;lcd.c,24 :: 		}
L_end_getStringLength:
	RETURN
; end of _getStringLength

_main:

;lcd.c,26 :: 		void main() {
;lcd.c,28 :: 		char a[] = "Hi i am rakibul islam rakib. sherpur  is my home town.";
	MOVLW      72
	MOVWF      main_a_L0+0
	MOVLW      105
	MOVWF      main_a_L0+1
	MOVLW      32
	MOVWF      main_a_L0+2
	MOVLW      105
	MOVWF      main_a_L0+3
	MOVLW      32
	MOVWF      main_a_L0+4
	MOVLW      97
	MOVWF      main_a_L0+5
	MOVLW      109
	MOVWF      main_a_L0+6
	MOVLW      32
	MOVWF      main_a_L0+7
	MOVLW      114
	MOVWF      main_a_L0+8
	MOVLW      97
	MOVWF      main_a_L0+9
	MOVLW      107
	MOVWF      main_a_L0+10
	MOVLW      105
	MOVWF      main_a_L0+11
	MOVLW      98
	MOVWF      main_a_L0+12
	MOVLW      117
	MOVWF      main_a_L0+13
	MOVLW      108
	MOVWF      main_a_L0+14
	MOVLW      32
	MOVWF      main_a_L0+15
	MOVLW      105
	MOVWF      main_a_L0+16
	MOVLW      115
	MOVWF      main_a_L0+17
	MOVLW      108
	MOVWF      main_a_L0+18
	MOVLW      97
	MOVWF      main_a_L0+19
	MOVLW      109
	MOVWF      main_a_L0+20
	MOVLW      32
	MOVWF      main_a_L0+21
	MOVLW      114
	MOVWF      main_a_L0+22
	MOVLW      97
	MOVWF      main_a_L0+23
	MOVLW      107
	MOVWF      main_a_L0+24
	MOVLW      105
	MOVWF      main_a_L0+25
	MOVLW      98
	MOVWF      main_a_L0+26
	MOVLW      46
	MOVWF      main_a_L0+27
	MOVLW      32
	MOVWF      main_a_L0+28
	MOVLW      115
	MOVWF      main_a_L0+29
	MOVLW      104
	MOVWF      main_a_L0+30
	MOVLW      101
	MOVWF      main_a_L0+31
	MOVLW      114
	MOVWF      main_a_L0+32
	MOVLW      112
	MOVWF      main_a_L0+33
	MOVLW      117
	MOVWF      main_a_L0+34
	MOVLW      114
	MOVWF      main_a_L0+35
	MOVLW      32
	MOVWF      main_a_L0+36
	MOVLW      32
	MOVWF      main_a_L0+37
	MOVLW      105
	MOVWF      main_a_L0+38
	MOVLW      115
	MOVWF      main_a_L0+39
	MOVLW      32
	MOVWF      main_a_L0+40
	MOVLW      109
	MOVWF      main_a_L0+41
	MOVLW      121
	MOVWF      main_a_L0+42
	MOVLW      32
	MOVWF      main_a_L0+43
	MOVLW      104
	MOVWF      main_a_L0+44
	MOVLW      111
	MOVWF      main_a_L0+45
	MOVLW      109
	MOVWF      main_a_L0+46
	MOVLW      101
	MOVWF      main_a_L0+47
	MOVLW      32
	MOVWF      main_a_L0+48
	MOVLW      116
	MOVWF      main_a_L0+49
	MOVLW      111
	MOVWF      main_a_L0+50
	MOVLW      119
	MOVWF      main_a_L0+51
	MOVLW      110
	MOVWF      main_a_L0+52
	MOVLW      46
	MOVWF      main_a_L0+53
	CLRF       main_a_L0+54
	MOVLW      73
	MOVWF      main_b_L0+0
	MOVLW      39
	MOVWF      main_b_L0+1
	MOVLW      109
	MOVWF      main_b_L0+2
	MOVLW      32
	MOVWF      main_b_L0+3
	MOVLW      97
	MOVWF      main_b_L0+4
	MOVLW      32
	MOVWF      main_b_L0+5
	MOVLW      99
	MOVWF      main_b_L0+6
	MOVLW      111
	MOVWF      main_b_L0+7
	MOVLW      109
	MOVWF      main_b_L0+8
	MOVLW      112
	MOVWF      main_b_L0+9
	MOVLW      117
	MOVWF      main_b_L0+10
	MOVLW      116
	MOVWF      main_b_L0+11
	MOVLW      101
	MOVWF      main_b_L0+12
	MOVLW      114
	MOVWF      main_b_L0+13
	MOVLW      32
	MOVWF      main_b_L0+14
	MOVLW      101
	MOVWF      main_b_L0+15
	MOVLW      110
	MOVWF      main_b_L0+16
	MOVLW      103
	MOVWF      main_b_L0+17
	MOVLW      105
	MOVWF      main_b_L0+18
	MOVLW      110
	MOVWF      main_b_L0+19
	MOVLW      101
	MOVWF      main_b_L0+20
	MOVLW      101
	MOVWF      main_b_L0+21
	MOVLW      114
	MOVWF      main_b_L0+22
	MOVLW      46
	MOVWF      main_b_L0+23
	MOVLW      32
	MOVWF      main_b_L0+24
	MOVLW      78
	MOVWF      main_b_L0+25
	MOVLW      111
	MOVWF      main_b_L0+26
	MOVLW      119
	MOVWF      main_b_L0+27
	MOVLW      32
	MOVWF      main_b_L0+28
	MOVLW      73
	MOVWF      main_b_L0+29
	MOVLW      32
	MOVWF      main_b_L0+30
	MOVLW      97
	MOVWF      main_b_L0+31
	MOVLW      109
	MOVWF      main_b_L0+32
	MOVLW      32
	MOVWF      main_b_L0+33
	MOVLW      97
	MOVWF      main_b_L0+34
	MOVLW      116
	MOVWF      main_b_L0+35
	MOVLW      32
	MOVWF      main_b_L0+36
	MOVLW      52
	MOVWF      main_b_L0+37
	MOVLW      50
	MOVWF      main_b_L0+38
	MOVLW      32
	MOVWF      main_b_L0+39
	MOVLW      32
	MOVWF      main_b_L0+40
	MOVLW      32
	MOVWF      main_b_L0+41
	MOVLW      32
	MOVWF      main_b_L0+42
	MOVLW      32
	MOVWF      main_b_L0+43
	MOVLW      32
	MOVWF      main_b_L0+44
	MOVLW      32
	MOVWF      main_b_L0+45
	MOVLW      32
	MOVWF      main_b_L0+46
	MOVLW      32
	MOVWF      main_b_L0+47
	MOVLW      32
	MOVWF      main_b_L0+48
	MOVLW      32
	MOVWF      main_b_L0+49
	MOVLW      32
	MOVWF      main_b_L0+50
	MOVLW      32
	MOVWF      main_b_L0+51
	MOVLW      32
	MOVWF      main_b_L0+52
	CLRF       main_b_L0+53
;lcd.c,30 :: 		int a_length = getStringLength(a);
	MOVLW      main_a_L0+0
	MOVWF      FARG_getStringLength_str+0
	CALL       _getStringLength+0
	MOVF       R0+0, 0
	MOVWF      main_a_length_L0+0
	MOVF       R0+1, 0
	MOVWF      main_a_length_L0+1
;lcd.c,31 :: 		int b_length = getStringLength(b);
	MOVLW      main_b_L0+0
	MOVWF      FARG_getStringLength_str+0
	CALL       _getStringLength+0
;lcd.c,33 :: 		lcd_init();
	CALL       _Lcd_Init+0
;lcd.c,34 :: 		lcd_cmd(_lcd_cursor_off);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd.c,35 :: 		lcd_out(1,1,a);
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_a_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd.c,36 :: 		lcd_out(2,1,b);
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      main_b_L0+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcd.c,37 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
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
;lcd.c,39 :: 		while(1){
L_main3:
;lcd.c,40 :: 		for(i=0;i<a_length-17;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main5:
	MOVLW      17
	SUBWF      main_a_length_L0+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      main_a_length_L0+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVF       R1+0, 0
	SUBWF      main_i_L0+0, 0
L__main15:
	BTFSC      STATUS+0, 0
	GOTO       L_main6
;lcd.c,41 :: 		lcd_cmd(_lcd_shift_left);
	MOVLW      24
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd.c,42 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;lcd.c,40 :: 		for(i=0;i<a_length-17;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;lcd.c,43 :: 		}
	GOTO       L_main5
L_main6:
;lcd.c,44 :: 		for(i=0;i<a_length-17;i++){
	CLRF       main_i_L0+0
	CLRF       main_i_L0+1
L_main9:
	MOVLW      17
	SUBWF      main_a_length_L0+0, 0
	MOVWF      R1+0
	MOVLW      0
	BTFSS      STATUS+0, 0
	ADDLW      1
	SUBWF      main_a_length_L0+1, 0
	MOVWF      R1+1
	MOVLW      128
	XORWF      main_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      R1+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVF       R1+0, 0
	SUBWF      main_i_L0+0, 0
L__main16:
	BTFSC      STATUS+0, 0
	GOTO       L_main10
;lcd.c,45 :: 		lcd_cmd(_lcd_shift_right);
	MOVLW      28
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcd.c,46 :: 		delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main12:
	DECFSZ     R13+0, 1
	GOTO       L_main12
	DECFSZ     R12+0, 1
	GOTO       L_main12
	DECFSZ     R11+0, 1
	GOTO       L_main12
	NOP
	NOP
;lcd.c,44 :: 		for(i=0;i<a_length-17;i++){
	INCF       main_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       main_i_L0+1, 1
;lcd.c,47 :: 		}
	GOTO       L_main9
L_main10:
;lcd.c,49 :: 		}
	GOTO       L_main3
;lcd.c,52 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
