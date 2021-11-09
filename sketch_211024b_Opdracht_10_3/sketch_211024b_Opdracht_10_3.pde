import controlP5.*;
float totaal;
int deel = 100;
int keer = 121;
ControlP5  cp;
Button knop1;
Textfield tekstveld1;

void setup() {
  size(900, 900);
  background(255, 255, 255);

  cp =  new ControlP5(this);

  ControlFont font = new ControlFont(createFont("font",40));

  knop1 = cp.addButton("knop1")
    .setPosition(200, 200)
    .setSize(600, 250)
    .setFont(font)
    .setCaptionLabel("Klik hier");

  tekstveld1 = cp
    .addTextfield("TextInput1")
    .setPosition(200, 400)
    .setSize(600, 150)
    .setFont(font)
    .setText("")
    .setCaptionLabel("Type je prijs hierboven")
    .setColorLabel(color(0, 0, 0));
}

void draw() {
}
   
void knop1() {

    String mytext = tekstveld1.getText();
    float mytextt =Integer. parseInt (mytext);
    totaal = mytextt / 100;
    totaal = totaal * 121;
    
  println("De prijs plus btw is  " + totaal);
}
