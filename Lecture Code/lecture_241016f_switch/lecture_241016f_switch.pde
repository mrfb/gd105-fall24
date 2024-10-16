PVector player;

void setup(){
  player = new PVector(width/2, height/2);
  
  size(1024, 1024);
  background(80);
  strokeWeight(2);
  noSmooth();
}

void draw(){
  circle(player.x, player.y, 50);
}

void keyReleased(){
  switch(key){
    case 'w':
    case 'W':
      player.y -= 1;
      break;
    case 'a':
    case 'A':
      player.x -= 1;
      break;
    case 's':
    case 'S':
      player.y += 1;
      break;
    case 'd':
    case 'D':
      player.x += 1;
      break;
  }
}
