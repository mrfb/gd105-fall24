// declare our variables that will store our images
PImage ravioliFood;
PImage ravioliCat1;
PImage ravioliCat2;
PImage ravioliCat3;

void setup(){
  size(1024, 1024);
  
  // load the images in the data folder once during setup
  ravioliFood = loadImage("ravioliFood.png");
  ravioliCat1 = loadImage("IMG_9656.png");
  ravioliCat2 = loadImage("IMG_9649.png");
  ravioliCat3 = loadImage("IMG_9608.png");
  
  // default image anchor is top-left corner
  imageMode(CENTER);
}

void draw(){
  background(255);
  
  float size;
  
  // using image(img, x, y, w, h) instead of image(img, x, y)
  size = 0.54; // for aspect-locked resizing
  image(ravioliCat1, 322, 746,
        ravioliCat1.width * size, ravioliCat1.height * size);
  
  size = 0.89; 
  image(ravioliCat2, 770, 655,
        ravioliCat1.width * size, ravioliCat1.height * size);
  
  size = 0.77; 
  image(ravioliCat3, 550, 220,
        ravioliCat1.width * size, ravioliCat1.height * size);
  
  size = 0.21; 
  image(ravioliFood, 493, 244,
        ravioliFood.width * size, ravioliFood.height * size);
        
  if(frameCount == 1){
    save("ravioli.png");
  }
}
