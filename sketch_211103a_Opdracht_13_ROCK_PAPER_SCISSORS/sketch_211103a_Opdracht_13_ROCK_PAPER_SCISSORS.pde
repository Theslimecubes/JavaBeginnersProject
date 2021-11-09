import controlP5.*;

ControlP5 cp;

String playerKeuze;
String ComputerKeuze;
String uitkomst = "";
String Result = "";
 Button[] buttons = new Button[3]; 

void setup() {
  size(800, 800);
background(255);
  cp = new ControlP5(this);

  buttons[0] = cp.addButton("Steen")
  .setPosition(0,600)
  .setSize(200,200)
  .setCaptionLabel("steen");
  
  buttons[1] = cp.addButton("Papier")
  .setPosition(200,600)
  .setSize(200,200)
  .setCaptionLabel("Papier");
  
  buttons[2] = cp.addButton("Schaar")
  .setPosition(400,600)
  .setSize(200,200)
  .setCaptionLabel("Schaar");
  
  ComputerKeuze();
 
}

void draw(){
 background(255);
 fill(0);
 textSize(15);
 text(Result, 0, 150);


}

void Steen() {
  playerKeuze= "Steen";
 ComputerKeuze(); 
 gelijk();
}

void Papier() {
  playerKeuze= "Papier";
  ComputerKeuze();
  gelijk();
}

void Schaar() {
  playerKeuze= "Schaar";
  ComputerKeuze();
  gelijk();
}
  

void ComputerKeuze(){
int numberRandom = floor(random(3));
 if (numberRandom == 0) {
   ComputerKeuze = "Steen";
 }
 else if(numberRandom == 1){
   ComputerKeuze = "Papier";
 }else{
   ComputerKeuze = "Schaar";
 }
}

void gelijk(){
  
 // als de computer hetzelfde heeft als de speler dan is het een draw
  if (ComputerKeuze == playerKeuze) {
    Result = "Draw";
   
  }else if( playerKeuze == "Steen" && ComputerKeuze == "Schaar"){
    Result = "Win";
  }else if( playerKeuze == "Schaar" && ComputerKeuze == "papier"){
    Result = "Win";
  }else if( playerKeuze == "Papier" && ComputerKeuze == "Steen"){
    Result = "Win";
  }else{
    Result = "Lose";

}

  
}
