int playerChoice, computerChoice;
float rButtonX, rButtonY, rButtonW, rButtonH, pButtonX, pButtonY, pButtonW, pButtonH, sButtonX, sButtonY, sButtonW, sButtonH;
int a;

void setup() {
  size(1000, 1000);//window's size ( you can change this as everything automatically adapts to the side of the window)
  playerChoice = 0;
  computerChoice = 0;
  a = 1;

  //location and size of the buttons
  //rock button
  rButtonX = width/10;//x-position
  rButtonY = height/1.25;//y-position
  rButtonW = width/10;//width of the button
  rButtonH = height/10;//height of the button

  //paper button
  pButtonX = width/2.22;//x-position
  pButtonY = height/1.25;//y-position
  pButtonW = width/10;//width of the button
  pButtonH = height/10;//height of the button

  //scissors button
  sButtonX = width/1.25;//x-position
  sButtonY = height/1.25;//y-position
  sButtonW = width/10;//width of the button
  sButtonH = height/10;//height of the button
}

void draw() {
  background(255);
  a();
  buttons();
  buttonsClicked();
  results();
}

void buttons() {//Draw the 3 buttons for the player
  fill(255);
  rect(rButtonX, rButtonY, rButtonW, rButtonH);//rock-bottom
  rect(pButtonX, pButtonY, pButtonW, pButtonH);//paper-bottom
  rect(sButtonX, sButtonY, sButtonW, sButtonH);//scissors-bottom
  textSize(width/16.67);
  textAlign(CENTER);
  fill(0);
  text("Rock", width/6.67, height/1.14);
  text("Paper", width/2, height/1.14);
  text("Scissors", width/1.18, height/1.14);
}

void buttonsClicked() {//What happens when 1 of the 3 buttons is pressed.
  if (mousePressed) {
    if (mouseX > rButtonX && mouseX < rButtonX +rButtonW && mouseY > rButtonY && mouseY < rButtonY + rButtonH && computerChoice == 0) {
      playerChoice = 1;//rock
      computerChoice = (int)random(1.4);//random choice of computer
    }
    if (mouseX > pButtonX && mouseX < pButtonX +pButtonW && mouseY > pButtonY && mouseY < pButtonY + pButtonH && computerChoice == 0) {
      playerChoice = 2;//paper
      computerChoice = (int)random(1.4);//random choice of computer
    }
    if (mouseX > sButtonX && mouseX < sButtonX +sButtonW && mouseY > sButtonY && mouseY < sButtonY + sButtonH && computerChoice == 0) {
      playerChoice = 3;//scissors
      computerChoice = (int)random(1.4);//random choice of computer
    }
  }
}
void a() {//tells you what the computer has player
  if (a == -1) {
    if (computerChoice == 1) {
      textSize(width/16.67);
      textAlign(CENTER);
      fill(0);
      text("Computer has played rock", width/2, height/10);
    }
    if (computerChoice == 2) {
      textSize(width/16.67);
      textAlign(CENTER);
      fill(0);
      text("Computer has played paper", width/2, height/10);
    }
    if (computerChoice == 3) {
      textSize(width/16.67);
      textAlign(CENTER);
      fill(0);
      text("Computer has played scissors", width/2, height/10);
    }
  }
}

void results() {//All possible endings of tthe game
  //When the player and the computer made the same choice
  if ((playerChoice == 1 && computerChoice == 1) ||
    (playerChoice == 2 && computerChoice == 2) ||
    (playerChoice == 3 && computerChoice == 3)) { 

    textSize(width/12.5);
    textAlign(CENTER);
    fill(0, 0, 255);
    text("Draw \n Press any key to restart", width/2, height/2);
    if (keyPressed) {
      //Resets the game
      playerChoice = 0;
      computerChoice = 0;
    }

    // when the player wins
    if ((playerChoice == 2 && computerChoice == 1) ||
      (playerChoice == 1 && computerChoice == 3) ||
      (playerChoice == 3 && computerChoice == 2)) {

      textSize(width/12.5);
      textAlign(CENTER);
      fill(0, 0, 255);
      text("Yo win \n Press any key to restart", width/2, height/2);
      if (keyPressed) {
        //Resets the game
        playerChoice = 0;
        computerChoice = 0;
      }
    }

    // when the computer wins
    if ((playerChoice == 1 && computerChoice == 2) || 
      (playerChoice == 3 && computerChoice == 1) ||
      (playerChoice == 2 && computerChoice == 3)) {
      textSize(width/12.5);
      textAlign(CENTER);
      fill(0, 0, 255);
      text("Computer wins \n Press any key to restart", width/2, height/2);
      if (keyPressed) {
        //Resets the game
        playerChoice = 0;
        computerChoice = 0;
      }
    }
  }
}
