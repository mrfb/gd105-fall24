void setup(){
  size(1024, 1024);
  noStroke();
  noSmooth();
  strokeWeight(5);
  strokeCap(SQUARE);
  rectMode(CENTER);
}

void draw(){
  background(#ffffff);
  
  // move (0, 0) to the center of the canvas
  translate(width/2, height/2);
  
  // red squares behind
  fill(#aa0000);
  square(200, -200, 128);
  square(-200, 200, 128);
    
  // make a copy of the current matrix and add it to the stack
  pushMatrix();
  
  fill(#ffbf00); // yellow
  rotate(TAU/8.0); // tilted around origin by 1/8 turn
  square(0, 0, 512);
  
  // current matrix state:
    // translate to center
    // and rotate 1/8 a turn
  popMatrix(); // return to our "checkpointed" matrix
  
  // blue circles in front
  fill(#0000aa); // blue
  pushMatrix(); // checkpoint current matrix
  translate(200, 200);
  circle(0, 0, 128);
  stroke(0);
  line(100, 0, 150, 0); // draw 16 lines radiating out of the circle
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  rotate(TAU/16.0);
  line(100, 0, 150, 0);
  noStroke();
  popMatrix(); // return to last checkpoint
  
  circle(-200, -200, 128);
  
  if(frameCount == 1){
    save("output.png");
    println("saved as output.png!");
  }
  
}
