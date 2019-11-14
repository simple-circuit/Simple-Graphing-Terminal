//A simple component curve tracer
//PWM pulse width modulated triangle wave signal 0.25Hz
//Use simple.exe set to 115200 baud
//I/O-3 connects to a 1K resistor in series with a 1uf
//      capacitor to ground
//A0-A2 is the voltage delta for current measurement
//A2 is the voltage measurement

#include<Crt.h>

volatile int x, y;

void setup() {
 pinMode(3, OUTPUT);  //pin-3 is the PWM output 0 to 5V
 analogWrite(3,128);
 TCCR2B =TCCR2B & B11111000 | B00000001;  //set the clock divider to 1
 Serial.begin(115200); 
}

void loop() {
  int i;
  crtClear();
  delay(10);
  crtGrid(9,9);
  crtCursor(1,25);
  Serial.print("X = 0.5V/div   Y = 0.15mA/div");
  delay(10);
//ramp the PWM value 0 to 255 in steps of 4  
  for (i = 0; i<255; i= i+4){
   analogWrite(3,i);           //wite the PWM value
   delay(30);
   y = analogRead(A0);
   x = analogRead(A2);
   y = (y+analogRead(A0))>>1;
   if (i == 0)  crtMoveto((int)(x*0.70313+1),(int)(399-(y-x)*0.5919),'R');
   else crtLineto((int)(x*0.70313+1),(int)(399-(y-x)*0.5919),'R'); 
  }
//ramp the PWM value from 254 to zero in steps of 4  
  for (i = 254; i>=0;i = i-4){
   analogWrite(3,i); 
   delay(30);
   y = analogRead(A0);
   x = analogRead(A2);
   y = (y+analogRead(A0))>>1;
   crtLineto((int)(x*0.70313+1),(int)(399-(y-x)*0.5919),'R'); 
  }
  delay(500);
}
