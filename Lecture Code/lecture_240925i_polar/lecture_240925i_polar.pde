void setup(){
  size(1024, 1024);
  background(255);
  noStroke();
  noSmooth();
  fill(0, 128);
}

void draw(){
  translate(width/2, height/2);
  
  float time = frameCount * 0.001;
  float r = map(noise(time), 0, 1, 0, width/2);
  
  // speed up sweep by 2x
  circle(cos(time*2)*r, sin(time*2)*r, 20);
}

void mouseClicked(){
  save("output.png");
  println("saved!");
}
