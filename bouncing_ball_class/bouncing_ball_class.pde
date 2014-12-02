ball []z = new ball[50];

void setup(){
  size(900,500);
  for (int i=0; i < z.length; i++){
  z[i]= new ball();
  }
}

void draw() {
  background(0);
  for (int i=0; i < z.length; i++){
  z[i].move();
  z[i].bounce();
  z[i].display();
  }
}

class ball {
  float sz;
  PVector loc, vel;

  ball() {
    sz=20;
    loc= new PVector(width/2, height/2);
    vel= PVector.random2D();
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
  }

  void bounce() {
    if (loc.x +sz/2 > width || loc.x-sz/2<0) {
      vel.x*=-1;
    }
    if (loc.y +sz/2 >height || loc.y-sz/2<0) {
      vel.y*=-1;
    }
  }
}

