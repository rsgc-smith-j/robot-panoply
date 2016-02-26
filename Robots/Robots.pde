int scene = 1;

void setup() {
  //backround
  size (1000, 700);
  if (scene == 1) {
  }
}

void draw() {
  background(0);
  if (scene == 1) {
    fill(#B43E07);
    ellipse(470, 700, 1200, 200);
    ellipse(600, 640, 60, 35);
    ellipse(320, 654, 40, 35);
    ellipse(100, 670, 130, 45);
    fill(70);
    //ROBOTS
    //create and instance
    JSSRobot jamieRobot = new JSSRobot();
    DHRobot hoferBot = new DHRobot ();

    jamieRobot.drawAt(500, 100, 1.0, 1.0);
    hoferBot.drawAt(320, 550, 0.1, 0.1);
  }
  if (scene == 2) {
    background(0);
    fill(#B43E07);
    ellipse(470, 700, 1200, 200);
    DHRobot hoferBot = new DHRobot ();
    hoferBot.drawAt(320, 550, 0.1, 0.1);
  } 
}



void keyPressed () {
  scene += 1;
}