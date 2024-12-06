class Particle{
  PVector pos, vel, acc;
  float size;
  color c;
  
  Particle(){
    size = random(35, 75);
    pos = new PVector(random(width), random(height));
    vel = PVector.random2D().mult(400 / size);
    acc = new PVector(0, 1);
    
    colorMode(HSB, 1, 1, 1);
    c = color(random(1), random(1), random(1));
  }
  
  boolean isColliding(Particle p){
    return dist(pos.x, pos.y, p.pos.x, p.pos.y) < size + p.size;
  }
  
  void update(){
    pos.add(vel);
    vel.add(acc);
  }
  
  void display(){
    fill(c);
    noStroke();
    circle(pos.x, pos.y, size);
  }
  
}
