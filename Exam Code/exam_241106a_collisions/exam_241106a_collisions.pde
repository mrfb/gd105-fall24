// This shows a solution for the programming problem on the exam,
// writing a function to check for collisions.

float circleRadius = 128;
PVector[] circles;
float rectW = 256;
float rectH = 64;

void setup(){
  size(1024, 1024);
  noSmooth();
  
  // allocate our array
  circles = new PVector[24];
  for(int i = 0; i < circles.length; i++){
    // allocate and initialize the objects in the array
    // z is being used here as a size scalar (for fun. this is kind of hack-y.)
    circles[i] = new PVector(random(width), random(height), random(0.5, 1));
  }
}

void draw(){
  background(#ffbfaa);
  color rectFill = #ffffff; // if we don't end up colliding with something, we'll use this
  
  // check collision for each circle
  for(int i = 0; i < circles.length; i++){
    if(inCircle(circles[i].x, circles[i].y, circleRadius * circles[i].z, mouseX, mouseY, rectW, rectH)){
      fill(#aa0000, 100);
      rectFill = #0000aa;
    } else {
      fill(#ffffff, 100);
    }
    strokeWeight(5);
    circle(circles[i].x, circles[i].y, circleRadius * 2 * circles[i].z);
  }
  
  fill(rectFill, 100);
  rect(mouseX, mouseY, rectW, rectH);
  
}

// The Easy Path: point-circle collision
boolean inCircle(float cX, float cY, float cR,
                 float pX, float pY){
  return dist(cX, cY, pX, pY) < cR;
}

// The Hard Path: circle-rect collision
boolean inCircle(float cX, float cY, float cR,
                 float rX, float rY, float rW, float rH){
  // we need to figure out what the closest point is
  // between the center of the circle and the rect in question
  // reference: https://www.jeffreythompson.org/collision-detection/circle-rect.php
  float dX = cX;
  float dY = cY; // let's assume the closest point is the center of the circle;
  if(cX < rX){             // if the rectangle is to the right of the circle...
    dX = rX;               // ...the closest horizontal point is the left edge
  } else if(cX > rX + rW){ // otherwise if the rectangle is to the left...
    dX = rX + rW;          // ...the closest horizontal point is the right edge
  }
  
  if(cY < rY){             // if the rectangle is below...
    dY = rY;               // ...the closest point is the top edge
  } else if(cY > rY + rH){ // otherwise if the rectangle is above...
    dY = rY + rH;          // ...the closest point is the bottom edge
  }
  
  // draw the line from the center of the circle
  // to the closest point on the rectangle
  strokeWeight(2);
  line(cX, cY, dX, dY);
  
  // if that line is shorter than the radius, the rectangle is inside the circle!
  return dist(dX, dY, cX, cY) < cR;
}
