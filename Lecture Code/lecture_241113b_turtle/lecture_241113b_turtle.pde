Turtle yertle;
//Turtle[] turts;

void setup(){
  size(1024, 1024);
  background(255);
  noSmooth();
  //turts = new Turtle[1];
  
  yertle = new Turtle(width * 0.50, height * 0.25);
  
}

void draw(){
  // fixed, deterministic
  background(255);
  yertle.teleport(width * 0.59, height * 0.32);
  yertle.heading.set(1, 0);
  for(int i = 0; i < 145; i++){
    yertle.forward(347);
    yertle.turn(143);
    yertle.forward(627);
    yertle.turn(26);
  }
  
  // stochastic, iterative
  //yertle.forward(10);
  //yertle.turn(int(random(0, 5)));
  
  
}
