void setup(){
  size(666, 666);
  noSmooth();
  frameRate(5);
  strokeWeight(5);
}

void draw(){
  background(#aa0000);
  
  // draw the lines where our circles can be
  float n = 9.0;
  for(int x = 1; x < n; x++){
    for(int y = 1; y < n; y++){
      fill((x + y) / (2*(n-1)) * 255);
      circle(x/n * width, y/n * height, 23);
    }
  }
}
