// starting from https://processing.org/reference/libraries/video/Capture.html

import processing.video.*;

Capture cam;

PVector offset;

void setup() {
  size(640, 480);
  //fullScreen(2);

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
  
  // gesso
  background(255);
}

void draw() {
  // grab the current frame from the camera
  if (cam.available() == true) {
    cam.read();
  }
  
  // grab the current canvas and shift it one pixel to the left
  image(get(), -1, 0);
  
  // add a new pixel column from the camera to the far right
  image(cam, width-1, 0);
}
