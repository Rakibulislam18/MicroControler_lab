#line 1 "G:/micro_lab/MULTI_plexer/multiplexer.c"

void main() {
 int i=0,j=0, number=0;
 int leftDigit, rightDigit;
 TRISB = 0x00;


 while(1){
 portb = number;
 delay_ms(100);
 number++;
 i++;
 j++;
 if(j == 10){
 j = 0;
 number = number + 6;
 }
 if(i==100){
 i = 0;
 number = 0;
 }

 }


}
