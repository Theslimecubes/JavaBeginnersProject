import controlP5.*;

ControlP5 cp;

Button knop1; 

void setup() {
  size(800, 800);

  cp = new ControlP5(this);

  knop1 = cp.addButton("Knop1")
  .setPosition(600,600)
  .setSize(200,200)
  .setCaptionLabel("Schaar");
}

void draw() {
}
