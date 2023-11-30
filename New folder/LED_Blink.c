void main() {
     TRISB=0x00;
     portb= 0x00;
     while(1){
              portb.rb0=1;
              delay_ms(1000);
              portb.rb0=0;
              delay_ms(1000);
              
              portb.rb1=1;
              delay_ms(1000);
              portb.rb1=0;
              delay_ms(1000);

     }


}