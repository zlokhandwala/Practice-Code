PImage photo;

void setup(){
  size(100,100);
  photo= loadImage();
}

void draw(){
  image(photo, 5,5);
}
