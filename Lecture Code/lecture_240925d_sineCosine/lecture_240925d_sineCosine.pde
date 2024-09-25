// this code is using stuff we haven't talked about
// it's primarily for me demonstrating some trig stuff
// not necessarily something i expect you to be able to recreate

PVector center, mouse;

void setup(){
  size(1024, 1024);
  noSmooth(); // no aliasing
  
  center = new PVector(width/2, height/2);
  mouse = new PVector();
}

void draw(){
  background(255);
  
  mouse.set(mouseX, mouseY);
  
  strokeWeight(3);
  stroke(0);
  
  float theta = PVector.angleBetween(center, mouse) + PI;
  
  fill(#ffbf00);
  float radius = dist(center.x, center.y, mouse.x, mouse.y);
  radius = width*.45;
  
  arc(center.x, center.y, radius*2, radius*2, 0, TAU);
  
  stroke(#aa0000);
  line(center.x, center.x, mouse.x, center.y);
  stroke(#00aa00);
  line(center.x, center.x, center.x, mouse.y);
  stroke(0);
  line(center.x, center.y, mouse.x, mouse.y);
  
}

// this gets called whenever... the mouse gets clicked!
void mouseClicked(){
  save("output.png");
  println("saved!");
}
