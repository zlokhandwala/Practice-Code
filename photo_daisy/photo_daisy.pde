PImage daisy;
int count= 30;
PVector[] loc=new PVector [count];
PVector[] vel= new PVector [count];
PVector[] acc= new PVector [count];
float[]sz=new float [count];

void setup() {
  size(800, 800);
  daisy= loadImage("daisy.jpg");

  for (int i=0; i<count; i++) {
    sz[i]=random(30, 60);
    loc[i]= new PVector(random(width), random(20,100));
    vel[i]=new PVector(0, random(3));
    acc[i]=new PVector(0, .2);
  }
  noStroke();
}

void draw() {
  background(0, 0);
  for (int i=0; i<count; i++) {
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);
    vel[i].limit(5);
    image(daisy, 0, 0, sz[i], sz[i]);

    acc[i].x=random(-.03, .03);

    if (loc[i].y-sz[i]/2>height) {
      loc[i].set(random(width), random(-height, -sz[i]/2));
      vel[i].set(0, 1);
    }
  }
}

