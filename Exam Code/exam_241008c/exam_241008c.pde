// aww, he's trying SO hard to
// reach the top of the frame

void setup(){
  //size(666, 666);
}

void draw(){
  background(255);
  float x = sin(frameCount*0.09); // [-1..1]
  x = max(x, 0);                  // [0..1]
  x *= 45;                        // [0..45]
  x = height - x;                 // [55..100]
  x -= 25;                        // [30..75]
  
  circle(width/2, x, 50);
}
