PVector redCircle, blueSquare;

void setup(){
  size(666, 666);
  noStroke();
  noSmooth();
  rectMode(CENTER);
  
  redCircle = new PVector(100, 100);
  
  blueSquare = new PVector();
  blueSquare.x = 50;
  blueSquare.y = 500;
}

void draw(){
  background(255);
  
  fill(#ff0000);
  circle(redCircle.x, redCircle.y, 100);
  redCircle.y += 1;
  
  fill(#0000ff);
  square(blueSquare.x, blueSquare.y, 100);
  blueSquare.x += 1;
  
  if(frameCount == 1){
    save("output.png");
    println("image saved!");
  }
}
