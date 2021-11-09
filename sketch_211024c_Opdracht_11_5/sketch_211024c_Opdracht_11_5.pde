   
boolean gevonden;
String[] namen = new String [10];

void setup() {
  namen[0] = "jan";
  namen[1] = "Chanoa";
  namen[2] = "Josh";
  namen[3] = "Danny";
  namen[4] = "Kethy";

gevonden = false;

  for (int  i = 0; i < namen.length;  i++) {
    if (namen[i] == "jan") {
      gevonden = true;
    }
  }
  println(gevonden);
}
