PImage daisy;
int x, y, xspeed, yspeed;

void setup() {
  size(800, 800);
  daisy= loadImage("daisy.jpg");
  xspeed=1;
  yspeed=1;
}

void draw() {
  background(0, 0);
  image(daisy, x, y, daisy.width*.1, daisy.height*.1);
  x+=xspeed;
  y+=yspeed;
}

