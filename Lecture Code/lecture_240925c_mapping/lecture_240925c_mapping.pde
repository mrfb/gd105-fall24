void setup(){
  size(1024, 1024);
  noSmooth(); // no aliasing
}

void draw(){
  background(255);
  // follow the mouse
  noStroke();
  fill(#ffbf00, 50);
  
  strokeWeight(3);
  stroke(0);
  
  int time = frameCount % 100; // [0..99]  
  float end = map(time, 0, 99, TAU * 0.50, TAU * 0.75);
  println(map(25, 0, 99, 0.50, 0.75));
  
  arc(width*0.5, height*0.5,
      width*0.9, height*0.9,
      TAU * 0, end);
  
}

// this gets called whenever... the mouse gets clicked!
void mouseClicked(){
  save("output.png");
  println("saved!");
}
