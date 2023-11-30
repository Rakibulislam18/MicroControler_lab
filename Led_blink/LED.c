
  void main(){
  int counter=0;

       while(counter<3){
                TRISB=0X00;
                PORTB=0X00;
                
                PORTB.RB0=1;
                Delay_ms(1000);
                PORTB.RB0=0;
                
                PORTB.RB1=1;
                Delay_ms(1000);
                PORTB.RB1=0;
                counter++;

                
       }
  
  }