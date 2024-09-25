color pickColor(){
  int r, g, b, a;
  r = floor(random(200, 255));
  g = floor(random(150, 200));
  b = floor(random(180, 230));
  a = 255;
  
  return color(r, g, b, a);
}

color pickColor(float scale){
  int r, g, b, a;
  r = floor(random(200, 255) * scale);
  g = floor(random(150, 200) * scale);
  b = floor(random(180, 230) * scale);
  a = 255;
  
  return color(r, g, b, a);
}
