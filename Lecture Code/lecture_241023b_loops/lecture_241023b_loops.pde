void setup(){
  size(666, 666);
  noSmooth();
  frameRate(5);
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
  
  // show the lines where our circles can be
  
  
  // we know that a and b are different!
  circle(a/n * width, height/2, 100);
  circle(b/n * width, height/2, 100);
}
