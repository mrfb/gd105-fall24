// adjusting and tweaking the turtle class to operate in bulk and be based on noise

Turtle[] turts;

float noiseScale = 0.001;
float turniness = 4;
int frameLimit = 1500;

void setup(){
  size(1024, 1024);
  background(255);
  noSmooth();
  turts = new Turtle[4096];
  
  for(int i = 0; i < turts.length; i++){
    turts[i] = new Turtle(width * 0.50, height * 0.50);
    turts[i].heading = PVector.random2D();
  }
  
}

void draw(){
  // fixed, deterministic
  //background(255);
  //yertle.teleport(width * 0.59, height * 0.32);
  
  
  
  for(int i = 0; i < turts.length; i++){
    turts[i].forward(1);
    turts[i].turn(map(noise(turts[i].pos.x * noiseScale,
                            turts[i].pos.y * noiseScale
                            //,
                            //frameCount*noiseScale*0.5
                            ),
                      0, 1,
                      -turniness, turniness));
    if(random(1) < 0.005){
      turts[i].teleport(9999999, 9999999);
    }
  }
  
  if(frameCount < frameLimit){
    saveFrame("frames/####.png");
  } else if (frameCount == frameLimit){
    println("all done!");
  }
}
