void setup(){
  size(1024, 1024);
  
  strokeWeight(2);
  noSmooth();
}

void draw(){
  background(80);
  float circleRadius = 128 + cos(frameCount*0.03)*32;
  float mouseRadius = 64 + sin(frameCount*0.06)*32;
  float mouseDistance = dist(mouseX, mouseY, width/2, height/2); //tktk
  
  boolean colliding = mouseDistance < circleRadius + mouseRadius;
  
  print("\nthe circles are ");
  
  if(colliding){
    print("colliding!");
    fill(#aa0000); // set fill to red
  } else {
    print("not colliding!");
    fill(#00aa00); // green
  }
  
  circle(width/2, height/2, circleRadius * 2);
  circle(mouseX, mouseY, mouseRadius * 2);
}
