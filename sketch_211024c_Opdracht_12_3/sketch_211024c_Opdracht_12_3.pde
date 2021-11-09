void setup(){
  size(800,800);
  background(255,255,255);
}

void draw(){
  if (mouseButton == LEFT){
    rect(mouseX,mouseY,50,50);
    fill(random(255),random(255),random(255));  
  }
}
