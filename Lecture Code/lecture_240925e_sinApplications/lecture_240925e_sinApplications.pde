void setup(){
  size(1024, 1024);
  noSmooth(); // no aliasing
  background(255);
  noStroke();
}

void draw(){
  fill(255, 4);
  rect(0, 0, width, height); // fading trails
  //background(255); // no trails
  
  fill(0);
  translate(width/2, height/2);
  
  // there are three tuning variables here. what happens when they change?
  float spinSpeed = 0.03;
  float xSpeed = 0.05;
  float ySpeed = 0.07;
  float radius = 300;
  rotate(frameCount * spinSpeed); // adding a spin complicates the motion
  circle(map(cos(frameCount * xSpeed), -1, 1, -radius, radius),
         map(sin(frameCount * ySpeed), -1, 1, -radius, radius),
         50);
}

void mouseClicked(){
  save("output.png");
  println("saved!");
}
