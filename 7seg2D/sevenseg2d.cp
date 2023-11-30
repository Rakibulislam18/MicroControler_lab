#line 1 "I:/micro_lab/7seg2D/sevenseg2d.c"
 char array_CA[]={0xC0, 0xF9, 0xA4, 0xB0, 0x99, 0x92, 0x82, 0xF8, 0x80, 0x90};
void main() {
 int i=0,j;
 int leftDigit,rightDigit;
 TRISB=0x00;
 portb=0x00;
 TRISC=0x00;
 portb=0x00;

 while(1){
 leftDigit=i/10;
 rightDigit=i%10;
 for(j=1;j<=25;j++)
 {
 portc.f0=1;
 portb = array_CA[leftDigit];
 delay_ms(3);
 portc.f0=0;

 portc.f1=1;
 portb = array_CA[rightDigit];
 delay_ms(3);
 portc.f1=0;



 }
 i++;
 i = i%100;

 }


}
