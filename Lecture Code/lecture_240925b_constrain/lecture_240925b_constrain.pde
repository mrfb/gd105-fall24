void setup(){
  size(1024, 1024);
  background(255); // only in setup so we build up our canvas
  noSmooth(); // no aliasing
}

void draw(){
  // follow the mouse
  noStroke();
  fill(#ffbf00);
  
  int x = (int)constrain(mouseX, width*0.25, width*0.75);
    // mouseX: [0..width)
    // constrained: [256..768] or [width*25%..width*75%]
  int y = (int)constrain(mouseY, height*0.25, height*0.75);
  
  // draw a yellow circle at (x, y)
  circle(x, y, 100);
  
  // redraw the smiley face on top of everything
  fill(0);
  strokeWeight(3);
  circle(width*.25, height*.25, 50);
  circle(width*.75, height*.25, 50);
  noFill();
  stroke(0);
  arc(width*.50, height*.50,
      width*.50, height*.50, 0, TAU*0.5);
}

// this gets called whenever... the mouse gets clicked!
void mouseClicked(){
  save("output.png");
  println("saved!");
}
