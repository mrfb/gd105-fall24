PGraphics pg;

void setup() {
  size(1000, 1000);
  pg = createGraphics(400, 800);
}

void draw() {
  pg.beginDraw();
  pg.stroke(255, 50);
  pg.line(pg.width/2, pg.height/2, mouseX-100, mouseY-100);
  pg.endDraw();
  
  image(pg, 100, 100); 
  image(pg, 200, 100);
}

void mouseClicked(){
  pg.save("output.png");
}
