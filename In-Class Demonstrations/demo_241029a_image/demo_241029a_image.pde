PImage soda; // declare

void setup(){
  size(666, 666);
  soda = loadImage("squort.png"); // initialize
}

void draw(){
  image(soda, 0, 0, width, height); // use
}
