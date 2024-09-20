// one possible solution to the problem on exam 1

/*
  Exam 1, Section 5:
  
  Write a program that draws a yellow smiley face
  with no outline. The face should take up exactly 
  92.5825% of the width of the canvas, and be placed 
  in the absolute center of the canvas. It should be 
  rotated by exactly 30.8124% of a full turn.
*/

void setup(){
  size(999,999);
}

void draw(){
  // set the transforms before drawing anything
  translate(width/2, height/2);
  rotate(TAU * 0.308124);
  
  // draw the head
  fill(255, 255, 0);
  noStroke();
  circle(0, 0, width * .925825);
  
  // draw the eyes (any method is fine so long
  // as they are vaguely where eyes might go)
  fill(0);
  circle(-250, -250, 50);
  circle(250, -250, 50);
  
  // draw the mouth (any mouth is fine)
  stroke(0);
  line(-250, 250, 250, 250);
  
}
