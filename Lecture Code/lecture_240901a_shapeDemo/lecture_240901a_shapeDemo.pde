void setup() {
  size(1024, 1024);
}

void draw() {
  background(#ffffff);

  //eyes
  int eyeOffset = 256; // left and right of center
  int eyeY = 256; // yPosition
  int eyeWidth = 400; // eye dimensions
  int eyeHeight = 203; // try tweaking this

  // left eye
  fill(#ffffff);  // eye white
  stroke(#940505);
  strokeWeight(24);
  ellipse(width/2 - eyeOffset, eyeY, eyeWidth, eyeHeight);
  fill(#e62b2b);
  circle(width/2 - eyeOffset, eyeY, eyeHeight);

  // right eye
  fill(#ffffff);  // eye white
  stroke(#940505);
  strokeWeight(24);
  ellipse(width/2 + eyeOffset, eyeY, eyeWidth, eyeHeight);
  fill(#e62b2b);
  circle(width/2 + eyeOffset, eyeY, eyeHeight);
   //<>//
  // nose
  PVector a, b, c, d;
  int noseX = 512;
  int noseY = 576;
  int noseOffset = 80;
  int noseHeight = 100;
  a = new PVector(noseX, noseY - noseHeight);
  b = new PVector(noseX - noseOffset, noseY);
  c = new PVector(noseX + noseOffset, noseY);
  d = new PVector(noseX, noseY + noseHeight);
  
  fill(#fffdc2);
  stroke(#eee000);
  //quad(a.x, a.y, b.x, b.y, d.x, d.y, c.x, c.y );
  triangle(a.x, a.y, b.x, b.y, c.x, c.y);

  // mouth
  int mouthX = width/2 - eyeOffset;
  int mouthY = 768;
  int toothSize = 100;
  fill(#2e2e88);
  stroke(#acaeff);
  rectMode(CORNER);
  rect(mouthX, mouthY, eyeOffset*2, eyeHeight);
  fill(#ffffff);

  rectMode(CENTER);
  square(width/2, mouthY + toothSize * 0.5, toothSize); // center tooth
  square(width/2 - toothSize * 1.5, mouthY + toothSize * 0.5, toothSize); // left tooth
  square(width/2 + toothSize * 1.5, mouthY + toothSize * 0.5, toothSize); // right tooth

  if (frameCount == 1) {
    save("output.png");
    println("saved as output.png!");
  }
}
