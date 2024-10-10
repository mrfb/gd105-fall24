void setup(){
  size(997, 997);
  rectMode(CENTER);
  colorMode(HSB, TAU, 1, 1);
  noSmooth();
}

void draw(){
  // white background
  background(#ffffff);
  // translate to center
  translate(width/2, height/2);
  
  // calculate coordinates
  float r = width * 0.45678;
  float theta = frameCount * 0.03 % TAU;
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  fill(theta, 1, 1);
  line(0, 0, x, y);
  square(x, y, 75);
  
}
