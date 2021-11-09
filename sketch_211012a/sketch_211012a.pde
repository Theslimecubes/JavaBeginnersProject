import controlP5.*;
ControlP5 cp5 = new ControlP5(this);

ControlP5 cp;

Button knop1;

void setup() {
  size(800, 800);

  cp5= new ControlP5(this);

  knop1 = cp.addButton("Knop1").setPosition(400, 400).setSize(400, 200).setCaptionLabel("Press me");
}

void draw() {
}

cp.addButton("Knop1").setPosition(400, 400).setSize(400, 200).setCaptionLabel("Press me");
