void setup(){
  size(666, 666); // hail satan
  rectMode(CENTER);
  background(0);
  noSmooth();
}

void draw(){ 
  // every 100 frames, set the color to something random
  if(frameCount % 100 == 0){
    fill(random(255), random(255), random(255));
    println("blip!");
  } else {
    fill(#ffffff);
  }
  
  // origin at center
  translate(width/2, height/2);
  
  // draw a square that spirals out
  // (radius and theta steadily increase)
  square(sin(frameCount * 0.03) * frameCount * 0.1,
         cos(frameCount * 0.03) * frameCount * 0.1, 
         50);
         
}
