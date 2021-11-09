void setup() {
}

boolean a = true;
void draw() {
  if (keyCode == 40 && a == true) {
    println("Gevonden print.");
    a = false;
  }
}
