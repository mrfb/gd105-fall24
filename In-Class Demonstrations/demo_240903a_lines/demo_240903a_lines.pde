PVector a, b, c, d;

void setup(){
  //size(666, 666);
  fullScreen();
  background(255);
  a = new PVector (random(width), random(height));
  b = new PVector (random(width), random(height));
  c = new PVector (random(width), random(height));
  d = new PVector (random(width), random(height));
  
  strokeWeight(2);
  noSmooth();
}

void draw(){
  stroke(0, 4);
  line(a.x, a.y, b.x, b.y);
  stroke(255, 16);
  line(c.x, c.y, d.x, d.y);
  
  a.add(PVector.random2D());
  b.add(PVector.random2D().mult(2));
  c.add(PVector.random2D());
  d.add(PVector.random2D());
}
