void setup() {
  size(1024, 1024);
  strokeCap(PROJECT);
}

void draw() {
  strokeWeight(124);
  
  background(255);
  
  // draw a horizontal line in the dead center
  stroke(#eb3862);
  line(422.14, height/2, 601, height/2);
  
  // draw a diagonal line from the TR to the BL
  stroke(#fbe000, 96);
  line(width, 0, 0, height);
  line(0, 0, width, height);
  
  // draw a line from the center to the bottom
  stroke(#82a2cd, 150);
  line(width/2, height/2, width/2, height);
  
  // Only save the image on the first frame.
  if(frameCount == 1){
    save("composition_2024-08-21.png");
  }
}
