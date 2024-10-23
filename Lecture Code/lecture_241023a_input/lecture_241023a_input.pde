boolean lightsOn = false;

void setup(){
  size(666, 666);
  strokeWeight(10);
}

void draw(){
  if(lightsOn){
    background(255);
  } else {
    //background(0);
  }
}

void mouseClicked(){
  lightsOn = !lightsOn;
}

void mouseDragged(){
  if(mouseButton == LEFT){
    stroke(#aa0000);
  } else {
    stroke(#0000aa);
  }
  
  line(pmouseX, pmouseY, mouseX, mouseY);
}
