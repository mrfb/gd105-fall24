// In-class demonstration, re: using transforms to mirror what we draw

void setup(){
  size(666, 666);
}

void draw(){
  background(#ffffff);
  
  //circle(0, 0, 200);
  int x = 50;
  int y = 0;
  int size = 25;
  
  translate(width/2, height/2); // move (0, 0) to the center of canvas
  
  circle(-50, 0, size);
  square(-200, -200, 100);
  line(-300, -300, 000, 000);
  line(-200, 0, 0, 0);
  
  scale(-1, 1); // enter the mirrorverse -- flips the axis horizontally across the origin
  
  // repeat the previous commands
  circle(-50, 0, size);
  square(-200, -200, 100);
  line(-300, -300, 000, 000);
  line(-200, 0, 0, 0);
}
