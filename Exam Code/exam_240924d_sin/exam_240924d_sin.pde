// code used for the diagram question on
// the exam 1 hd remaster
// if you're looking at this before the exam:
// ...nice job paying attention!

void setup(){
  size(666, 666);
  background(255);
  noFill();
  strokeWeight(2);
  noSmooth();
}

void draw(){
  /*
  Note the following function signatures:
    float sin(float angle)
    float map(float value,
      float start1, float stop1,
      float start2, float stop2)
  */
  
  circle(
    mouseX,
    map(sin(mouseX / 50.0), -1, 1, 0, height),
    20
   );
}
