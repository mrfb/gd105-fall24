void setup(){
  size(1024, 1024);
  
  strokeWeight(2);
  noSmooth();
}

void draw(){
  background(80);
  PVector a, b, aDimensions, bDimensions;
  a = new PVector(mouseX, mouseY);
  aDimensions = new PVector(64, 32);
  b = new PVector(width/2, height/2);
  bDimensions = new PVector(128 + cos(frameCount*0.03)*32,
                            64 + sin(frameCount*0.06)*32);
  
  boolean xOverlap, yOverlap;
  /*
      bbbbb    these overlap in the x axis
      bbbbb    if the left edge of b is further left
      ---      than the right edge of a, AND
    aaaaa      if the right edge of b is further right than
    aaaaa      the left edge of a
  */
  xOverlap = a.x < b.x + bDimensions.x &&
             a.x + aDimensions.x > b.x;
  // repeat for y axis
  yOverlap = a.y < b.y + bDimensions.y &&
             a.y + aDimensions.y > b.y;
  
  // if we are overlapping on every axis, we're colliding
  boolean colliding = xOverlap && yOverlap;
  
  print("\nthe rectangles are ");
  
  if(colliding){
    print("colliding!");
    fill(#aa0000); // set fill to red
  } else {
    print("not colliding!");
    fill(#00aa00); // green
  }
  
  rect(b.x, b.y, bDimensions.x, bDimensions.y);
  rect(a.x, a.y, aDimensions.x, aDimensions.y);
  
}
