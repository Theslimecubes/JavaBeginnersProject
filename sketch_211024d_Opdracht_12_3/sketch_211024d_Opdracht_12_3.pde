boolean on = false;
int mil;
int s;
int m;
int h;
int a;

void setup() {
  size(1000,1000);
}

void draw() {
  background(255,255,255);
   if (on){
    mil=millis()-a;
  }
  
  if (mil>=1000){
    s++;
    a+=1000;
  }
  if (s==60){
    m++;
    s=0;
  }
  if (m==60){
    h++;
    m=0;
  }
  
  fill(0,0,0);
  textSize(113);
  text(nf(h,2)+":"+nf(m,2)+":"+nf(s,2)+":"+nf(mil,3),10,400);
  
   fill(0,0,0);
    textSize(42);
    text("Press Spacebar to start and pause",3,230);
    textSize(53);
    text("Press control to reset timer",2,280);
 
}

void keyPressed() {
  if (keyCode==32 && !on){
    on=true;
    a=millis();
  } else if (keyCode==32){
    on = false;
  }
  else if (keyCode==17){
    on=false;
    mil=0;
    s=0;
    m=0;
    h=0;
  }
}
