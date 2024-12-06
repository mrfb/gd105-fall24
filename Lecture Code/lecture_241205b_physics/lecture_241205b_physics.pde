Particle[] p;

void setup(){
  size(1024, 1024);
  p = new Particle[100];
  
  for(int i = 0; i < p.length; i++){
    p[i] = new Particle();
  }
  background(255);
}

void draw(){
  for(int i = 0; i < p.length; i++){
    p[i].update();
    p[i].display();
  }
}
