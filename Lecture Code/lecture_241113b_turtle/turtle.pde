class Turtle{
  // PROPERTIES
  PVector pos;
  PVector heading;
  
  // CONSTRUCTORS
  Turtle(float x, float y){
    pos = new PVector(x, y);
    heading = new PVector(1, 0);
  }
  
  // METHODS
  
  // turn turns us an amount in degrees
  void turn(int turnAmt){
    heading.rotate(radians(turnAmt));
  }
  
  void forward(float amount){
    PVector oldPos = pos.copy();
    pos.add(PVector.mult(heading, amount));
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
