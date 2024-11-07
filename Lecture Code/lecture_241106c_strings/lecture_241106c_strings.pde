String message = "ah, fuck.";

void setup(){
  println(message + "..");
  println(message.substring(4, message.length()).toUpperCase());
  println(message.toUpperCase().replace(".", "!"));
  println(message.replace("fuck", "beans"));
}

void draw(){
}
