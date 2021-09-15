float gewicht = 72.5;
float lengte = 1.92;
float leeftijd = 32;
float BMI = 0;

BMI = gewicht / (lengte * lengte);
BMI *= 10;
BMI = round(BMI);
BMI /= 10;

size( 700,500);
background(255,255,255);

rect(150,200,115,30);
rect(300,100,115,30);
rect(450,200,115,30);

fill(0,0,0);
text("Gewicht = " + gewicht + "KG",154,220);
text("Leeftijd = " + leeftijd + " jaar",305,120);
text("Lengte =" + lengte + "meter",454,220);




if(leeftijd < 70){
if(BMI < 18.5){
  fill(0,255,0);
}else if(BMI < 25){
  fill(0,255,0);
  }else if(BMI < 30){
  fill(0,255,0);
  }else{
}

if(BMI < 22){
  fill(0,255,0);
  }else if(BMI <28){
  fill(0,255,0);
  }else if(BMI < 30){
  fill(0,255,0);
  }else{
 }
}

textSize(30);
text("BMI: " + BMI , 310,350);
