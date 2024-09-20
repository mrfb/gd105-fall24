void setup() {
  size(500, 500);
  noSmooth();
  strokeWeight(2);
}

void draw() {
  int gridSize = 25;
  
  // this "snaps" us to the 20px grid
  int x = round(mouseX / float(gridSize)) * gridSize;
  int y = round(mouseY / float(gridSize)) * gridSize;
  circle(x, y, gridSize);
  println("(" + x + ",\t" + y + ")");
}
