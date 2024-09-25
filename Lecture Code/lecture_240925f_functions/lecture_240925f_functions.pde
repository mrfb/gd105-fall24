void setup(){
  size(1024, 1024);
  frameRate(3); // be careful of fast strobe effects
  noStroke();
  background(255);
}

void draw(){
  background(255);
  
  fill(pickColor(0.00)); // outermost black circle
  circle(width/2, height/2, width*2);
  fill(pickColor(0.01));
  circle(width/2, height/2, 1000);
  fill(pickColor(0.04));
  circle(width/2, height/2, 900);
  fill(pickColor(0.09));
  circle(width/2, height/2, 800);
  fill(pickColor(0.16));
  circle(width/2, height/2, 700);
  fill(pickColor(0.25));
  circle(width/2, height/2, 600);
  fill(pickColor(0.36));
  circle(width/2, height/2, 500);
  fill(pickColor(0.49));
  circle(width/2, height/2, 400);
  fill(pickColor(0.64));
  circle(width/2, height/2, 300);
  fill(pickColor(0.81));
  circle(width/2, height/2, 200);
  fill(pickColor());
  circle(width/2, height/2, 100);
}

void mouseClicked(){
  save("output.png");
  println("saved!");
}
