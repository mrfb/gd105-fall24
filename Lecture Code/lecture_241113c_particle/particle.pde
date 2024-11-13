class Particle{
  // PROPERTIES
  PVector pos;
  color c;
  int size;
  
  // CONSTRUCTORS
  Particle(float x, float y, int s){
    pos = new PVector(x, y);
    c = color(int(random(256))); //[0..255]
    size = s;
  }
  
  // METHODS
  
  // turn turns us an amount in degrees
  void display(){
    
  }
  
  void update(){
    
  }
}
