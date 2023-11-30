#line 1 "G:/micro_lab/SERVE_MOTOR/Servo_Motor.c"
void main() {
 int i;
 TRISB=0x00;
 portb=0x00;
 while(1){
 for(i=0;i<=50;i++){
 portb.f0=1;
 delay_us(800);
 portb.f0=0;
 delay_us(19200);

 }
 delay_ms(200);

 for(i=0;i<=50;i++){
 portb.f0=1;
 delay_us(1500);
 portb.f0=0;
 delay_us(18500);

 }
 delay_ms(200);

 for(i=0;i<=50;i++){
 portb.f0=1;
 delay_us(2200);
 portb.f0=0;
 delay_us(17800);

 }
 delay_ms(200);

 }
}
