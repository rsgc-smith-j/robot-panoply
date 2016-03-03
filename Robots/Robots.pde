//Works to make scenes change when key pressed
int scene = 1;

//Draws Canvas
void setup() {
  //backround
  size (1000, 700);
  if (scene == 1) {
  }
}

//Draws First scene
void draw() {
  background(0);
  if (scene == 2) {

    //Inserts text
    fill(255);
    textSize(20);
    text("Mark Watney is left on mars", 320, 50);
    //Draws and colors Mars
    fill(#B43E07);
    ellipse(470, 700, 1200, 200);
    ellipse(600, 640, 60, 35);
    ellipse(320, 654, 40, 35);
    ellipse(100, 670, 130, 45);
    fill(70);

    //Draws the robot characters
    JSSRobot jamieRobot = new JSSRobot();
    DHRobot hoferBot = new DHRobot ();
    jamieRobot.drawAt(500, 100, 1.0, 1.0);
    hoferBot.drawAt(320, 550, 0.1, 0.1);
  } else if (scene == 3) {

    //clears old text and add the new

    background(0);
    fill(255);
    textSize(20);
    text("Mark makes himself at home", 320, 50);

    //redraws mars

    fill(#B43E07);
    ellipse(470, 700, 1200, 200);
    ellipse(600, 640, 60, 35);
    ellipse(320, 654, 40, 35);
    ellipse(100, 670, 130, 45);

    //draws the house

    fill(40);
    rect(220, 470, 140, 140);
    triangle( 190, 470, 390, 470, 290, 400);

    //draws the robot charaters
    DHRobot hoferBot = new DHRobot ();
    hoferBot.drawAt(420, 550, 0.1, 0.1);
    fill(6);
    rect(256, 530, 60, 80);
  }

  //Third scene
  else if (scene == 4) {
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

  if (scene ==1) {
    fill(255);
    textSize (64);
    textAlign(CENTER);
    text("The Martian", 500, 300);
    textSize (32);
    text ("James S.S.", 500, 500);
  }


    if (frameCount % 180 ==0) {
    scene +=1;
  }

  if (frameCount <= 720){
  saveFrame("export-####.png");
  } else {
    print("done");
  }
}


//Makes the scene change when key is pressed
void keyPressed () {
  scene += 1;
  if (scene > 3) { 
    scene = 1;
  }
}