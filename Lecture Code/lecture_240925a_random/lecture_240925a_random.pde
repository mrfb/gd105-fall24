void setup() {
  size(1024, 1024);
  background(255);
  noStroke();
}

void draw() {
  // 180, [180..255), [180..155)
  fill(180, random(180, 255), random(180, 255));
  
  // [0..width), [0..height], 50
  circle(random(width), random(height), 50);
  
  if(frameCount == 100){
    save("output.png");
  }
}
