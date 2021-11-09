import controlP5.*;
ControlP5  cp;
Button knop1;
Textfield  tekstveld1;
String[] array = new String [10];
int tel = 0;
void setup() {
  size(800, 800);
  cp =  new ControlP5(this);

  ControlFont font = new ControlFont(createFont(" ",50));
  tekstveld1 = cp
    .addTextfield("TextInput1")
    .setPosition(10, 220)
    .setSize(780, 200)
    .setFont(font)
    .setText("")
    .setCaptionLabel("")
    .setColorLabel(color(255, 0, 0));

  knop1 = cp.addButton("knop1")
    .setPosition(10, 10)
    .setSize(780, 200)
    .setFont(font)
    .setCaptionLabel("Klik hier");
}

void draw() {
  background(255);
}

void knop1() {

  array[tel] =  tekstveld1.getText();

  tel ++;
  if (tel == 10 ) {
    for (int i = 0; i < array.length; i++) {
      if ( i == 10) {
        i = 0;
      }
      println( "" + array[i]);
    }
    tel = 0;
  }
}
