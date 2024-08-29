// shape styles lecture demo

void setup(){
  size(666, 666);
}

void draw(){
  background(50);
  
  // set the line style to a thick dark red
  strokeWeight(25);
  
  // center circle with a blue fill and white outline
  fill(#00bfff, 255);
  stroke(#ffffff);
  circle(333, 333, width*0.9);
  
  // upper-left red circle with no fill
  noFill();
  stroke(#aa0000, 255);
  circle(120, 120, width*0.2);
  
  // bottom-right square filled with a 75% opaque white
  fill(#ffffff, 190);
  // stroke is still red from the previous shape
  square(333, 333, width*0.4);
  
  if(frameCount==1){
    save("output.png");
    println("saved as output.png");
  }
}
