#line 1 "G:/micro_lab/lcd/lcd.c"
sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;

int getStringLength(char *str) {
 int length = 0;

 while (*str != '\0') {
 length++;
 str++;
 }

 return length;
}

void main() {
 int i;
 char a[] = "Hi i am rakibul islam rakib. sherpur  is my home town.";
 char b[] = "I'm a computer engineer. Now I am at 42              ";
 int a_length = getStringLength(a);
 int b_length = getStringLength(b);

 lcd_init();
 lcd_cmd(_lcd_cursor_off);
 lcd_out(1,1,a);
 lcd_out(2,1,b);
 Delay_ms(500);

 while(1){
 for(i=0;i<a_length-17;i++){
 lcd_cmd(_lcd_shift_left);
 delay_ms(500);
 }
 for(i=0;i<a_length-17;i++){
 lcd_cmd(_lcd_shift_right);
 delay_ms(500);
 }

 }


}
