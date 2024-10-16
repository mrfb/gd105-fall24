void setup(){
  size(1024, 1024);
  background(80);
  strokeWeight(2);
  noSmooth();
}

void draw(){
  boolean onRightSide = mouseX > width * .75;
  boolean onLeftSide = mouseX < width * .25;
  
  print("\nthe mouse is ");
  
  if(onRightSide){
    print("on the right side");
    fill(#0000aa); // set fill to blue
  } else if(onLeftSide) {
    print("on the left side");
    fill(#aa0000); // red
  } else {
    print("in the middle");
    fill(#00aa00); // green
  }
  
  print("!\t(" + mouseX + ", " + mouseY + ")");
  
  
  
  circle(mouseX, mouseY, 50);
}
