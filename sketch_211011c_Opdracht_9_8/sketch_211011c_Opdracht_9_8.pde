void setup() {
  size(500, 500);
}

void draw() {
  
  //triangle(,100,100,100,100,100,100)
  tekenDriehoek(10, 10, 30, 10, 10, 30);
}

void tekenDriehoek(int x1,int y1,int x2,int y2,int x3,int y3) {
  //left line
  line(x1, y1, x2, y2);
  //right line
  line(x2, y2, x3, y3);
  //bottom line
  line(x3, y3, x1, y1);
}
