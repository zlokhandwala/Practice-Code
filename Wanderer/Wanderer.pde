PVector l;
PVector acc;
PVector vel;

int sz=11;

void setup() {
  size(800, 700);
  l=new PVector(width/2, height/2);
  vel=new PVector(0, 0);
  acc=new PVector(random(-1, 1), random(-1, 1));
}

void draw() {
  background(0);
  fill(30, 40, 200);
  
  acc.set(random(-1, 1), random(-1, 1));
 

  vel.add(acc);

  vel.limit(4);

  l.add(vel);

  ellipse(l.x, l.y, sz, sz);

  if (l.x-sz/2>width) {
    l.x=-sz/2;
  }
  if (l.x+sz/2<0) {
    l.x=width;
  }
  if (l.y-sz/2>height) {
    l.y=-sz/2;
  }
  if (l.y+sz/2<0) {
    l.y=height;
  }
}

