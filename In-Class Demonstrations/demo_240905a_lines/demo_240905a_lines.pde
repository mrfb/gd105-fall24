PVector a, b;
void setup(){
  size(666, 666);
  strokeWeight(4);
  strokeCap(PROJECT);
  noSmooth();
  a = new PVector(0, 0);
  b = new PVector(0, 0);
}

void draw(){
  background(#ffffff);
  
  // horizontal line base
  a.set(width * 0.25, height * 0.25); //y: 25%
  b.set(width * 0.75, height * 0.25);
  line(a.x, a.y, b.x, b.y);
  a.y += height * 0.10; // 35%
  b.y += height * 0.10;
  line(a.x, a.y, b.x, b.y);
  a.y += height * 0.10; // 45%
  b.y += height * 0.10;
  b.x += width * 0.10; // wild line
  line(a.x, a.y, b.x, b.y);
  b.x -= width * 0.10; // back to business
  a.y += height * 0.10; // 55%
  b.y += height * 0.10;
  line(a.x, a.y, b.x, b.y);
  a.y += height * 0.10; // 65%
  b.y += height * 0.10;
  a.x -= width * 0.10; // wild line
  line(a.x, a.y, b.x, b.y);
  a.x += width * 0.10; // back to business
  a.y += height * 0.10; // 75%
  b.y += height * 0.10;
  line(a.x, a.y, b.x, b.y);
  
  // vertical lines -- irregular
  b.set(width*0.25, height*0.65); //25%
  line(a.x, a.y, b.x, b.y);
  a.set(width*0.25, height*0.35);
  b.set(width*0.25, height*0.55);
  line(a.x, a.y, b.x, b.y);
  
  a.set(width*0.35, height*0.55);
  b.set(width*0.35, height*0.45);
  line(a.x, a.y, b.x, b.y);
  
  a.set(width*0.45, height*0.85); // wild line
  b.set(width*0.45, height*0.55);
  line(a.x, a.y, b.x, b.y);
  
  a.set(width*0.55, height*0.35);
  b.set(width*0.55, height*0.75);
  line(a.x, a.y, b.x, b.y);
  
  a.set(width*0.65, height*0.35);
  b.set(width*0.65, height*0.25);
  line(a.x, a.y, b.x, b.y);
  
  a.set(width*0.75, height*0.65);
  b.set(width*0.75, height*0.35);
  line(a.x, a.y, b.x, b.y);
  
  if(frameCount == 1){
    save("output.png");
    println("saved as output.png!");
  }
  
}
