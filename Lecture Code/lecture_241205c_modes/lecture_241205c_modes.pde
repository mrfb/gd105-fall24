String currentState = "";
String[] states = {"title", "blue", "red", "green"};


void setup(){
  size(1024, 1024);
  currentState = "title";
}

void draw(){
  switch(currentState){
    case "title":
      drawTitle();
      break;
    case "red":
      drawRed();
      break;
    case "green":
      drawGreen();
      break;
    case "blue":
      drawBlue();
      break;
  }
}

void keyTyped(){
  /*    title ----> red ----> green ----> blue
                     ^----------------------'  
  */
  if(currentState == "title"){
    currentState = "red";
    println("currentState", currentState);
  }
  if(currentState == "red"){
    currentState = "green";
    println("currentState", currentState);
    return;
  }
  if(currentState == "green"){
    currentState = "blue";
    println("currentState", currentState);
    return;
  }
  if(currentState == "blue"){
    currentState = "red";
    println("currentState", currentState);
    return;
  }
}
