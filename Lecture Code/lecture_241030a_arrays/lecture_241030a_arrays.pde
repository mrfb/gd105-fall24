int numCircles = 8;

// DECLARE, ALLOCATE, and INITIALIZE the palette array
color[] palette = {#ffbf00, #ffbff0, #bfff00, #bf0bf0};

// DECLARE the positions and fills array
int[] positions;
color[] fills;

void setup(){
  size(1024, 1024);
  noStroke();
  textSize(32);
  textAlign(CENTER,CENTER);
  
  // ALLOCATE the positions and fills arrays
  positions = new int[numCircles];
  fills = new color[numCircles];
  
  // INITIALIZE the positions and fills arrays
  for(int i = 0; i < numCircles; i++){
    // pick a random color from the palette
    int randomIndex;
    // make sure the color isn't the one we just chose
    do{
      randomIndex = (int)random(palette.length);
    } while(i > 0 && palette[randomIndex] == fills[i - 1]);
    
    fills[i] = palette[randomIndex];
    
    positions[i] = (int)random(width);
  }
  
}

void draw(){
  background(#ffffff);
  
  // process the array
  for(int i = 0; i < positions.length; i++){
    fill(fills[i]);
    circle(positions[i], i * 120 + 50, 100);
    
    fill(0);
    text(i, positions[i], i * 120 + 50);
    positions[i] += int(random(-2, i));
  }
  
}
