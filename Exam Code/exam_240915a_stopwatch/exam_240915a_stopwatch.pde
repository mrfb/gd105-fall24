/* This is a stopwatch for measuring (in discrete minutes) how much
   time has elapsed during the exams in GD105.
*/

int elapsedSeconds = 0;
boolean started = false;
PFont lora;
PFont loraItalic;

void setup(){
  fullScreen(2);
  frameRate(1);
  lora = loadFont("LoraRoman-Medium-128.vlw");
  loraItalic = loadFont("Lora-Italic-64.vlw");
  textAlign(CENTER, CENTER);
  fill(0);
  
  background(255);
  notYet();
}

void draw(){
  if(started){
    stopWatch();
  }
}

void notYet(){
  textFont(loraItalic);
  text("The exam has not begun.", width * 0.50, height * 0.50);
}

void stopWatch(){
  background(255);
  elapsedSeconds += 1;
  
  /* integer divisions means we only operate in whole minutes
     (i don't want to distract people with
     a frequently moving thing at the front of the class)
  */
  int elapsedMinutes = elapsedSeconds / 60;
  
  textFont(loraItalic);
  text("It has been", width * 0.50, height * 0.25);
  
  textFont(lora);
  text(elapsedMinutes + (elapsedMinutes==1?" minute":" minutes"), width * 0.50, height * 0.50);
  
  textFont(loraItalic);
  text("since the exam began.", width * 0.50, height * 0.75);
}

void keyPressed(){
  if(key == 'g'){ // g for "go!"
    started = true;
  }
}
