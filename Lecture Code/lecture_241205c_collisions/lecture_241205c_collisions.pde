Particle[] p;

void setup(){
  size(1024, 1024);
  p = new Particle[200];
  
  for(int i = 0; i < p.length; i++){
    p[i] = new Particle();
  }
  background(#ffffff);
}

void draw(){
  for(int i = 0; i < p.length; i++){    
    p[i].update();
    
    // check for collisions
    for(int j = 0; j < p.length; j++){
      if(i == j) continue;
      
      // when we collide, blend the two colors together
      if(p[i].isColliding(p[j])){
        color originalColor = p[i].c;
        p[i].c = lerpColor(p[i].c, p[j].c, 0.01);
        p[j].c = lerpColor(p[j].c, originalColor, 0.01);
        
        
      }
    }
    
    p[i].display();
  }
}
