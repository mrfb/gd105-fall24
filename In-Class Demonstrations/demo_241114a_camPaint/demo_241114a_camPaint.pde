// starting from https://processing.org/reference/libraries/video/Capture.html

import processing.video.*;

Capture cam;

PVector offset;

void setup() {
  //size(640, 480);
  fullScreen(2);

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
  
  // start at neutral
  offset = new PVector(0, 0, 0);
  
  imageMode(CENTER);
  
  // gesso
  background(255);
}

void draw() {
  // grab the current frame from the camera
  if (cam.available() == true) {
    cam.read();
  }
  
  // set the transform
  translate(width/2 + offset.x, height/2 + offset.y);
  rotate(offset.z * 0.01); // use z as rotation angle
  
  // paint the current frame onto the canvas
  image(cam, 0, 0);
  
  // adjust the transform
  offset.add(PVector.random3D());
}
