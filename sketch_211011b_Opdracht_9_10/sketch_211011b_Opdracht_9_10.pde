
void setup(){
  size(500,500);
  
}

void draw(){
  boomStam(255,300,20,275);
  blad(265,300,150);
  boomStam2(100,300,20,275);
  blad2(100,300,150);
  boomStam3(400,300,20,275);
  blad3(410,300,150);
}

 void boomStam(int x, int y, int breedte, int lengte) {
   fill(139,69,19);
   rect(x,y,breedte,lengte);
 }
 
 void blad(int x1, int y1, int groot) {
   fill(0,150,0);
   circle(x1,y1,groot);
 }
 

 void boomStam2(int x2, int y2, int breedte, int lengte) {
   fill(139,69,19);
   rect(x2,y2,breedte,lengte);
 }
 
 void blad2(int x2, int y2, int groot) {
   fill(0,150,0);
   circle(x2,y2,groot);
 }
 
  void boomStam3(int x2, int y2, int breedte, int lengte) {
   fill(139,69,19);
   rect(x2,y2,breedte,lengte);
 }
 
 void blad3(int x2, int y2, int groot) {
   fill(0,150,0);
   circle(x2,y2,groot);
 }
 
 
