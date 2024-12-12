import processing.sound.*;

SqrOsc sqrOsc;
SawOsc sawOsc;
Amplitude sqrAmp;
Amplitude sawAmp;
AudioIn in;

void setup() {
  size(512, 512);
  background(255);
  frameRate(120);
  
  // Create square wave
  sqrOsc = new SqrOsc(this);
  sawOsc = new SawOsc(this);
  
  sqrAmp = new Amplitude(this);
  sqrAmp.input(sqrOsc);
  sawAmp = new Amplitude(this);
  sawAmp.input(sawOsc);
  
  sqrOsc.play();
  sawOsc.play();
}      

void draw() {
  background(#ffffff);
  
  float xControl = map(mouseX, 0, width, 0, 1); // 1 at right
  float yControl = map(mouseY, 0, height, 1, 0); // 1 at top
  
  float vol = yControl;
  float pulse = noise(frameCount*0.5)>xControl?1:0 * yControl;
  float freq = map(xControl, 0, 1, 20, 880);
  
  sqrOsc.amp(pulse * vol);
  sqrOsc.freq(freq);
  
  sawOsc.amp(pulse * (1 - vol));
  sawOsc.freq(freq);
  
  fill(#aa0000, 128);
  noStroke();
  rect(0, height, width, map(sqrAmp.analyze(), 0, 1, 0, -height));
  
  fill(#0000aa, 128);
  noStroke();
  rect(0, 0, width, map(sawAmp.analyze(), 0, 1, 0, height));
  
}
