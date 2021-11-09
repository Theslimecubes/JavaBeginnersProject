int X1;
int Y1;  

void setup(){
  size(800,800);
  X1=300;
  Y1=300;
}

void draw(){
 background(255,255,255);
 rect(X1,Y1,200,200);
}

void keyPressed(){

  
  if (keyCode == 38){ 
    Y1 -= 10;
  } // up
  
  if (keyCode == 40){
    Y1 += 10;
  } // down
  
  if (keyCode == 37){
    X1 -= 10;
  } // left
  
  if (keyCode == 39){
    X1 += 10;
  } // right
  
}
