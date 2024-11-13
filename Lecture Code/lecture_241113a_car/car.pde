class Car {
  // PROPERTIES
  PVector pos;
  float speed;
  PVector heading;
  
  // CONTRUCTORS
  Car(){
    pos = new PVector(random(width), random(width));
    speed = 0;
    heading = PVector.random2D();
  }
  
  Car(float x, float y){
    pos = new PVector(x, y);
    speed = 0;
    heading = PVector.random2D();
  }
  
  // METHODS
  
  // draw the car at its current position
  void display(){
    translate(pos.x, pos.y);
    rotate(heading.heading());
    triangle(100, 0, 0, -30, 0, 30);
  }
  
  // update the position and state of the car
  // based on inputs
  void update(){
    // handle turning
    if(keyPressed && key == 'a'){
      turn(- TAU / 360.0);
    } else if (keyPressed && key == 'd'){
      turn(+ TAU / 360.0);
    } else {
      turn(0);
    }
    
    if(keyPressed && key == 'w'){
      accelerate();
    } else if (keyPressed && key == 's'){
      brake();
    }
    
    pos.add(PVector.mult(heading, speed));
  }
  
  void turn(float turnAmount){
    heading.rotate(turnAmount);
  }
  
  void accelerate(){
    speed = min(speed+1.0, 3.0);
  }
  
  void brake(){
    speed = max(speed*.8, 0);
  }
}
