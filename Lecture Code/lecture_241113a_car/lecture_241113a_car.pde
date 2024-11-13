Car c;

void setup(){
  size(1024, 1024);
  c = new Car(random(width*.25, width*.75),
              random(height*.25, height*.75));
}

// make sure you check the other tab!
void draw(){
  background(0);
  
  c.display();
  c.update();
  
}
