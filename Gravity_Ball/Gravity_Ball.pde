float x, y, yspeed, xspeed, gravity, velX, velY, sz;


void setup() {
  size(800, 800);
  x=width/2;
  y=height*.1;
  yspeed+= 2;
  xspeed+=2;
  gravity=1;
  sz=30;
  velX=1;
  velY=0;
}

void draw() {
  background(19,36,91);
  noStroke();
  ellipse(x, y, sz, sz);
  velY+=gravity;
  x+=velX;
  y+=velY;
  if (y+sz/2 >height) {
    velY=-abs(velY);
  }
  if (x+sz/2 >width){
    velX=-abs(velX);
  }
}


