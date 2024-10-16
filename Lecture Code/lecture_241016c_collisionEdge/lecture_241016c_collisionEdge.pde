PVector ball;
PVector ballVelocity;
float ballRadius = 64;

void setup(){
  size(1024, 1024);
  
  ball = new PVector(width/2, height/2);
  ballVelocity = PVector.random2D().mult(5);
  
  strokeWeight(2);
  noSmooth();
  //noStroke();
  background(80);
}

void draw(){
  //background(80);
  
  // draw
  circle(ball.x, ball.y, ballRadius*2);
  line(ball.x, ball.y,
       ball.x + ballVelocity.x, ball.y + ballVelocity.y);
  
  // update for next frame
  ball.add(ballVelocity);
  
  // this takes into account the edges of the circle
  // to collide at the center, remove the +- ballRadius term
  boolean offRightEdge = ball.x + ballRadius > width;
  boolean offLeftEdge = ball.x - ballRadius < 0;
  boolean offBottomEdge = ball.y + ballRadius > height;
  boolean offTopEdge = ball.y - ballRadius < 0;
  
  if(offRightEdge || offLeftEdge){
    // x-axis collision
    ballVelocity.x *= -1;
    fill(random(255), random(255), random(255));
    ballVelocity.rotate(random(-.02, .02)); // add a little variance
  }
  
  if(offBottomEdge || offTopEdge){
    // y-axis collision
    ballVelocity.y *= -1;
    fill(random(255), random(255), random(255));
    ballVelocity.rotate(random(-.02, .02)); // add a little variance
  }
}
