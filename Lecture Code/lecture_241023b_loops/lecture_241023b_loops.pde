void setup(){
  size(666, 666);
  noSmooth();
  frameRate(5);
  strokeWeight(5);
}

void draw(){
  background(#aa0000);
  
  // pick two random numbers
  // and repick them if they're the same
  int a, b;
  float n = 6.0; // our number range
  do{
    a = int(random(n - 1) + 1); // [1..n-1]
    b = int(random(n - 1) + 1); // [1..n-1]
  }while(a == b);
  
  // draw the lines where our circles can be
  for(int i = 1; i < n; i++){
    line(i/n * width, 0, i/n * width, height);
  }
  
  // we know that a and b are different!
  circle(a/n * width, height/2, 100);
  circle(b/n * width, height/2, 100);
}
