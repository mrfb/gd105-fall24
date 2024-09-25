void setup(){
  size(1024, 1024);
  background(255);
  noStroke();
  noSmooth();
  fill(0, 128);
}

void draw(){
  circle(frameCount % width,
         map(noise(frameCount*0.001), 0, 1, 0, height),
         20);
}

void mouseClicked(){
  save("output.png");
  println("saved!");
}
