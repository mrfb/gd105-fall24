PVector player;
boolean goingLeft, goingRight,
  goingUp, goingDown,
  spinningPositive, spinningNegative;
float speed = 5;

void setup() {
  size(1024, 1024);
  background(255);
  player = new PVector(width/2, height/2);
  noStroke();
  noSmooth();
  rectMode(CENTER);
}

void draw() {
  noStroke();
  fill(255, 50);
  rect(width/2, height/2, width, height);
  
  if(goingLeft){
    player.x -= speed;
  }
  if(goingRight){
    player.x += speed;
  }
  if(goingUp){
    player.y -= speed;
  }
  if(goingDown){
    player.y += speed;
  }
  if(spinningNegative){
    player.z -= radians(1);
  }
  if(spinningPositive){
    player.z += radians(1);
  }
  
  
  // set up transforms
  translate(player.x, player.y);
  rotate(player.z); // this is a bad and lazy way to do this.

  // render
  fill(0);
  square(0, 0, 128);
  fill(255);
  circle(0, 0, 64);
  stroke(0);
  line(0, 0, 0, -64); // line going north
  line(0, 0, -10, -64);
  line(0, 0, 10, -64);
}

void keyPressed() {
  switch(key) {
    case 'W':
    case 'w':
      goingUp = true;
      break;
    case 'S':
    case 's':
      goingDown = true;
      break;
    case 'A':
    case 'a':
      goingLeft = true;
      break;
    case 'D':
    case 'd':
      goingRight = true;
      break;
    case 'Q':
    case 'q':
      spinningNegative = true;
      break;
    case 'E':
    case 'e':
      spinningPositive = true;
      break;
  }
}

void keyReleased() {
  switch(key) {
    case 'W':
    case 'w':
      goingUp = false;
      break;
    case 'S':
    case 's':
      goingDown = false;
      break;
    case 'A':
    case 'a':
      goingLeft = false;
      break;
    case 'D':
    case 'd':
      goingRight = false;
      break;
    case 'Q':
    case 'q':
      spinningNegative = false;
      break;
    case 'E':
    case 'e':
      spinningPositive = false;
      break;
  }
}
