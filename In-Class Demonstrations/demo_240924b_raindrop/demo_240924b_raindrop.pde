// make it rain
// (a request from foo)
// this is using some things i haven't necessarily
// gone over in class yet

PVector raindrop;
float water = 10;

void setup(){
  background(#aaaaff); // raindrop-colored background
  size(666, 666);
  raindrop = new PVector (random(width), random(height));
}

void draw(){
  // draw a bit of background
  fill(0, 3); // 3/255 (~1%) transparency
  noStroke();
  rect(0, 0, width, height); // bg() can't use transparency
  //background(0);
  
  // draw the raindrop at its current location
  fill(#aaaaff, 50);
  noStroke();
  ellipse(raindrop.x, raindrop.y, water, water * 1.2);
    
  // move the raindrop
  float jumpiness = 0.9;
  raindrop.y += random(jumpiness) * 2; // move down one pixel every frame
  raindrop.x += random(-jumpiness, jumpiness);
  
  // randomly decrease the size a bit
  water -= random(0, 0.03);
  
  // relocate the raindrop if it's offscreen
  if(raindrop.y > height + 5 || water < 8){
    raindrop.set(random(width*.1, width*.9), random(height*0.7));
    water = random(9, 12);
  }
}
