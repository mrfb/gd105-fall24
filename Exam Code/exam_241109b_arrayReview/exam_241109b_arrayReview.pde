// declared, allocated, initialized
String[] files = {
  "flaming skull 1.png",
  "flaming skull 2.png", 
  "flaming skull 3.png", 
  "flaming skull 4.png", 
  "flaming skull 5.png", 
  "flaming skull 6.png", 
  "nonflaming skull 1.png"
};

PVector[] points; // declared
PImage[] images; // declared

PVector[] corners;
color[] colors;

void setup(){
  size(1024, 1024);
  
  rectMode(CENTER);
  imageMode(CENTER);
  noSmooth();
  
  corners = new PVector[4];
  corners[0] = new PVector(0, 0); // TL
  corners[1] = new PVector(width, 0); // TR
  corners[2] = new PVector(0, height); // BL
  corners[3] = new PVector(width, height); // BR
  
  colors = new color[3];
  for(int i = 0; i < colors.length; i++){
    colors[i] = color(random(255), random(255), random(255));
  }
  
  points = new PVector[files.length]; // allocated
  images = new PImage[files.length];
  for(int i = 0; i < files.length; i++){
    // initialize
    points[i] = new PVector(random(width*.1, width*.9),
                            random(height*.1, width*.9));
    images[i] = loadImage(files[i]);
  }
  
}

void draw(){
  background(255);
  
  for(int i = 0; i < points.length; i++){
    translate(points[i].x, points[i].y);
    rotate(points[i].z / 128);
   
    image(images[i], 0, 0);
    points[i].add(PVector.random3D());
    resetMatrix();
  }
  
  for(int i = 0; i < corners.length; i++){
    square(corners[i].x, corners[i].y, 256);
  }
  
}
