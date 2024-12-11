// bgm and sfx via freesound.org
import processing.sound.*;
SoundFile laser;
SoundFile bgm;

// an Amplitude object lets us monitor the volume of something
Amplitude ampLaser, ampBGM;

void setup(){
  size(500, 500);
  
  // prepping assets
  laser = new SoundFile(this, "39459__the_bizniss__laser.wav");
  bgm = new SoundFile(this, "703912__migfus20__background-music-loop.wav");
  
  ampLaser = new Amplitude(this);
  ampLaser.input(laser);
  
  ampBGM = new Amplitude(this);
  ampBGM.input(bgm);
  
  noFill();
  strokeWeight(10);
  
  // play the background music at 95% speed and 10% volume
  bgm.loop(0.95, 0.10);
}

void draw(){
  background(255);
  
  // check the volume of the laser and draw a circle based on how loud it is
  stroke(#ff0000, 128);
  circle(width/2, height/2, max(ampLaser.analyze() * width, 1));
  
  // as above for BGM
  stroke(#0000ff, 128);
  circle(width/2, height/2, max(ampBGM.analyze() * width, 1));
}

void keyPressed(){
  // this will play the sound if it isn't already playing
  if(!laser.isPlaying()){
    // play the laser anywhere between 85% and 115% speed
    // to break up the repetition a bit
    laser.play(random(0.85, 1.15));
    println("zap! (frame " + frameCount + ")");
  }
  
  // alternate method: this restarts the sound when
  // the key is pressed, so keymashing still
  // doesn't have overlapping sound
    
  //laser.jump(0);
}
