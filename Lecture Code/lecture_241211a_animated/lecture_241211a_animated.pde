// display a talking head animation, in several parts

PImage face;
PImage[] flesh;
PImage[] mouth;

void setup() {
  size(1024, 1024);
  frameRate(12);
  imageMode(CENTER);
  
  // setup all images
  flesh = new PImage[4];
  mouth = new PImage[3];
  
  String base = "flesh";
  for(int i = 0; i < 4; i++){
    flesh[i] = loadImage(base + i + ".png");
  }
  
  base = "mouth";
  for(int i = 0; i < 3; i++){
    mouth[i] = loadImage(base + i + ".png");
  }
  
  face = loadImage("face.png");
}

void draw() {
  background(#FFFFFF);
  
  // walk through the frames: {0, 1, 2, 3, 0, 1, 2, 3, 0 ... }
  image(flesh[frameCount % flesh.length], width/2, height/2);
  image(face, width/2, height/2);
  
  int currentFrame;
  if(mousePressed){
    // cycle through the talking animation
    int[] frameSequence = {0, 1, 2, 1};
    currentFrame = frameSequence[frameCount % frameSequence.length];
  } else {
    // don't animate the mouth
    currentFrame = 0;
  }
  // display whatever mouth we've picked
  image(mouth[currentFrame], width/2, height/2);
  
  // Display instructions
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(32);
  text("Click to speak!", width*0.5, height*0.25);
}
