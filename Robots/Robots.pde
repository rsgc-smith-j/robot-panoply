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
    fill(255);
    textSize(20);
    text("Mark Watney is left on mars", 320, 50);
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
    fill(255);
    textSize(20);
    text("Mark makes himself at home", 320, 50);
    fill(#B43E07);
    ellipse(470, 700, 1200, 200);
    ellipse(600, 640, 60, 35);
    ellipse(320, 654, 40, 35);
    ellipse(100, 670, 130, 45);
    fill(40);
    rect(220, 470, 140, 140);
    triangle( 190, 470, 390, 470, 290, 400);
    DHRobot hoferBot = new DHRobot ();
    hoferBot.drawAt(420, 550, 0.1, 0.1);
    fill(6);
    rect(256, 530, 60, 80);
  }
  if (scene == 3) {
    fill(255);
    textSize(20);
    text("Mark Watney is rescued", 320, 50);
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

    jamieRobot.drawAt(500, 80, 0.8, 0.8);
    hoferBot.drawAt(536, 119, 0.09, 0.09);
  }
}



void keyPressed () {
  scene += 1;
}