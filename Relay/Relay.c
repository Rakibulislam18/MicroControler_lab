void main() {
     TRISB=0x00;
     portb=0x00;
     while(1){
            portb.f0=1;
            delay_ms(100);
            portb.f0=0;
            delay_ms(100);
            
            portb.f1=1;
            delay_ms(100);
            portb.f1=0;
            delay_ms(100);

     }

}