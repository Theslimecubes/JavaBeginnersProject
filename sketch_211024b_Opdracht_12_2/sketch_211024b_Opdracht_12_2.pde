long previous;
int a;

boolean active = false;


void setup() {
  previous = millis();
  a = 0;
}

void draw() {
}

void mousePressed() {
  if (millis() - previous > 10000) return;


  if  (mouseButton == LEFT) {
    a++;
  }
  println("you clicked ", a, " time");
}
