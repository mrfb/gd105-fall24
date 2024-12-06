class Particle{
  PVector pos, vel, acc;
  float size;
  color c;
  
  Particle(){
    size = random(50, 100);
    pos = new PVector(random(width), random(height));
    vel = PVector.random2D().mult(8);
    acc = new PVector(0, 1);
    
    c = color(random(180, 255), random(180, 255), random(180, 255));
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
