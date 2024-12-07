// exam 4 code solution
// section 2, question 5

PVector m, p, pH;

void setup(){
  size(1024, 1024);
  
  m = new PVector();
  p = new PVector(width/2, height/2);
  pH = new PVector(1, 0);
  noSmooth();
}

void draw(){
  background(255);
  m.set(mouseX, mouseY);
  
  // this particular solution is based on the homing rocket from
  // https://demoman.net/?a=trig-for-games
  
  PVector difference = new PVector(m.x - p.x, m.y - p.y);
  float currentRotation = pH.heading();
  float targetRotation = difference.heading();
  float angleDiff = targetRotation - currentRotation;
  
  // accounting for the case where we rotate the long way
  // e.g. when target is 99% TAU and current is 1% TAU
  if(angleDiff > TAU * 0.5){
    angleDiff -= TAU;
  } else if(angleDiff < -TAU * 0.5){
    angleDiff += TAU;
  }
  
  // limiting turn speed
  int rotateLimit = 5; // degrees
  if(angleDiff > radians(rotateLimit)){
    angleDiff = radians(rotateLimit);
  } else if(angleDiff < radians(-rotateLimit)){
    angleDiff = radians(-rotateLimit);
  }
  
  pH.rotate(angleDiff);
  p.add(pH);
  
  // draw everything
  // p
  stroke(#aa0000);
  circle(p.x, p.y, 100);
  
  // pH
  stroke(#00aa00);
  line(p.x, p.y, p.x + pH.x * 100, p.y + pH.y * 100);
  circle(p.x + pH.x * 100, p.y + pH.y * 100, 15);
  
  // difference
  stroke(#0000aa);
  line(p.x, p.y, m.x, m.y);
  
}
