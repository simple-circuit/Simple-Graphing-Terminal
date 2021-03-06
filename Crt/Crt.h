
void plotxy(int dx,int dy, char cc) {
 int i;
 char c1,c2,c3;
 Serial.write(27);
 Serial.print(cc);
  c3 = ((dx % 10) + 48);
  dx = dx / 10;
  c2 = ((dx % 10) + 48);
  dx = dx / 10;
  c1 = ((dx % 10) + 48);
  Serial.print(c1);Serial.print(c2);Serial.print(c3);  
  c3 = ((dy % 10) + 48);
  dy = dy / 10;
  c2 = ((dy % 10) + 48);
  dy = dy / 10;
  c1 = ((dy % 10) + 48);
  Serial.print(c1);Serial.print(c2);Serial.print(c3);  
} 

void crtCursor(int x, int y){
    plotxy(x, y,'c');
}

void crtClear(){
    Serial.write(12);
    delay(10);
    Serial.write(17); //cursor off
    Serial.write(20); //graphics on
}

void crtMoveto(int x, int y, char c){
   plotxy(x,y, c & 0x5F);
}

void crtLineto(int x, int y, char c){
   plotxy(x,y, c | 0x20);
}

void crtGrid(int nx,int ny) {
  int i;
  int n;
  plotxy(0,0,'L');
  plotxy(719,0,'l');    
  plotxy(0,399,'L');
  plotxy(719,399,'l');    
  plotxy(0,0,'L');
  plotxy(0,399,'l');    
  plotxy(719,0,'L');
  plotxy(719,399,'l');    
  n = 720 / (nx+1);
  for (i=0;i<nx;i++){
    plotxy(n*(i+1),0,'L');
    plotxy(n*(i+1),400,'l');    
  }
  n = 400 / (ny+1);
  for (i=0;i<ny;i++){
    plotxy(0,n*(i+1),'L');
    plotxy(720,n*(i+1),'l');    
  }
}

void crtPoint(int x, int y, char c)
{
 crtMoveto(x,y,c);
 plotxy(x,y,'P');
}

void crtRadar(int cm, int theta, char c){
 float a,x,y;
 
 if ((theta<0) || (theta > 180)) exit;
 if ((cm<0) || (cm > 400)) exit;
 a = (float)theta/57.3;
 x = (float)cm*cos(a);
 y = (float)cm*sin(a);
 crtPoint((int)(x+360.0),(int)(400.0-y), c);
}
