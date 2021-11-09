int num1;
int num2;
int num3;
int num4;
int num5;
int num6;
int num7;
int num8;
int num9;
int num10;
String[] array = new String [10];

void setup() {
  array[0] = "2";
  array[1] = "2";
  array[2] = "1";
  array[3] = "3";
  array[4] = "6";
  array[5] = "2";
  array[6] = "4";
  array[7] = "8";
  array[8] = "2";
  array[9] = "3";

  for (int i = 0; i < array.length; i++) {
    if (array[i] == "1") {
      num1 += 1;
    }
    if (array[i] == "2") {
      num2 += 1;
    }
    if (array[i] == "3") {
      num3 += 1;
    }
    if (array[i] == "4") {
      num4 += 1;
    }
    if (array[i] == "5") {
      num5 += 1;
    }
    if (array[i] == "6") {
      num6 += 1;
    }
    if (array[i] == "7") {
      num7 += 1;
    }
    if (array[i] == "8") {
      num8 += 1;
    }
    if (array[i] == "9") {
      num9 += 1;
    }
    if (array[i] == "10") {
      num10 += 1;
    }
  }
  println("er is "+ num1+ " X1");
  println("er is "+ num2+ " X2");
  println("er is "+ num3+ " X3");
  println("er is "+ num4+ " X4");
  println("er is "+ num5+ " X5");
  println("er is "+ num6+ " X6");
  println("er is "+ num7+ " X7");
  println("er is "+ num8+ " X8");
  println("er is "+ num9+ " X9");
  println("er is "+ num10+  " X10");
}
