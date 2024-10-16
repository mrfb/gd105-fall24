void setup(){
  size(1024, 1024);
  background(80);
  strokeWeight(2);
  noSmooth();
}

void draw(){
  boolean onRightSide = mouseX > width * .5;
  
  print("\nthe mouse is on the " + (onRightSide?"right":"left") + " side!");
  fill(random(1)<0.01?#0000aa:#00aa00);
  
  circle(mouseX, mouseY, 50);
}
