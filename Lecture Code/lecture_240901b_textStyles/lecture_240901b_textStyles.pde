color bg = #f3f2ff;
PFont bville;

void setup() {
  size(1024, 1024);
  bville = loadFont("Baskerville-Italic-96.vlw");
  textFont(bville);
}

void draw() {
  background(bg);

  // crescent moon wand
  noStroke();
  ellipseMode(CORNER);
  // manually tweaked
  fill(#f8f47e);
  circle(width * 0.1, height * 0.1, width * 0.81);
  fill(#fdfbc9);
  circle(width * 0.103, height * 0.103, width * 0.686);
  fill(bg);
  circle(width * 0.100, height * 0.100, width * 0.6);
  
  // text overlay
  fill(#1212ad);
  textAlign(CENTER, CENTER);
  text("Moon\nPower\nMakeup!", 413, 396);
  
  if (frameCount == 1) {
    save("output.png");
    println("saved as output.png!");
  }
}
