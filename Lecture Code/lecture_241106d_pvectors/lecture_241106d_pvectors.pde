PVector foo;

void setup(){
  size(1024, 1024);
  foo = PVector.random2D().mult(200);
}

void draw(){
  translate(width/2, height/2);
  background(255);
  circle(foo.x, foo.y, 100);
  line(0, 0, foo.x, foo.y);
  foo.rotate(TAU / 100);
  
  
}
