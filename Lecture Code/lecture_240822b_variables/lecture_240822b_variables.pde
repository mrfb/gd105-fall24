// when we declare variables,
// we need to specify the data type
// as well as the name of the variable
color red; // "color": the data type, "red": the variable name
color periwinkle; // same data type, different name
float shapeX, shapeY; // multi-variable declaration (same type)
float shapeSize = 150; // compound declaration/initialization

void setup(){
  size(666, 666);
  noStroke();
  rectMode(CENTER);
}

void draw(){
  // these need to get reset to their initial value every frame
  shapeSize = 250;
  shapeX = 150;
  shapeY = 150;
  
  // sizeStep, xStep, and yStep are all local variables
  // (they can't get used outside of this function)
  red = color(#861919, 167);
  periwinkle = color(#5245f5, 201);
  float sizeStep = 12;
  float xStep = 39;
  float yStep = 39;
  
  background(255);
  
  // iteration 1
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize -= sizeStep;
  shapeX += xStep;
  shapeY += yStep;
  
  // iteration 2
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  
  // iteration 3
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  
  // iteration 4
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  
  // iteration 5
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  
  // iteration 6
  fill(red);
  circle(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  fill(periwinkle);
  square(shapeX, shapeY, shapeSize);
  shapeSize = shapeSize - sizeStep;
  shapeX = shapeX + xStep;
  shapeY = shapeY + yStep;
  
  if(frameCount == 1){
    save("output.png");
    println("image saved!");
  }
}
