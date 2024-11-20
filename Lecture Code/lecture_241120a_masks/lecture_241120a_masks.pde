// declare a PImage to store our image and the mask for it
PImage ravioli, alphaChannel;

void setup(){
  size(1100, 1100); // a little bigger than 1080x
  imageMode(CENTER); // for convenience
  
  // these need to be the same dimensions!
  // both of these are 1080x1080 pixels
  ravioli = loadImage("theBoy.png");
  alphaChannel = loadImage("softMask.png");
  
  // we only need to apply the mask once
  ravioli.mask(alphaChannel);
}

void draw(){
  // oscillate between black and white to show off the mask
  background(map(sin(frameCount*0.05), -1, 1, 0, 255));
  
  // plop our masked image on the canvas
  image(ravioli, width/2, height/2);
}
