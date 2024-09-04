void setup(){
  size(1024, 1024);
  rectMode(CENTER);
  noSmooth(); // turns off aliasing--"crunchy" pixels
}

void draw(){
  background(#ffffff);
  
  fill(#0a0a0a, 32);
  noStroke();
  
  // move the origin point to the center
  translate(512, 512);
  
  // rotate 1/8 of a full turn (45°) clockwise
  rotate(TAU * (1.0/8.0));
  
  // tweaking variables
  float theta = TAU / 119.3;
  float shrinkage = 0.95;
  
  // draw a square, shrink and rotate a bit, repeat
  // this is not the best way to do this...
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  square(0, 0, 512);
  scale(shrinkage);
  rotate(theta);
  
  if(frameCount == 1){
    save("output.png");
    println("saved as output.png!");
  }
  
}
