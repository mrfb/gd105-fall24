class Turtle{
  // PROPERTIES
  PVector pos;
  PVector heading;
  color c;
  
  // CONSTRUCTORS
  Turtle(float x, float y){
    pos = new PVector(x, y);
    heading = new PVector(1, 0);
    colorMode(HSB, TAU, 1, 1);
    if(random(1) > .3){
      c = random(1) < 0.25 ? #000000 : #ffffff;
    } else {
      c = color(random(TAU * 0.5, TAU), random(0.75, 1), random(0.75, 1), 64);
    }
  }
  
  // METHODS
  
  // turn turns us an amount in degrees
  void turn(float turnAmt){
    heading.rotate(radians(turnAmt));
  }
  
  void forward(float amount){
    PVector oldPos = pos.copy();
    pos.add(PVector.mult(heading, amount));
    stroke(c);
    line(oldPos.x, oldPos.y, pos.x, pos.y);
  }
  
  // teleport moves us to a specific place
  void teleport(float x, float y){
    pos.set(x, y);
  }
  
  // overload: randomly teleport if no arguments specified
  void teleport(){
    pos.set(random(width), random(height));
  }
}
