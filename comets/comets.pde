ArrayList<Comet> allComets= new ArrayList<Comet>();
ArrayList<RComet> allRComets= new ArrayList<RComet>();
PImage s;
PImage planet;
PImage cometri;
PImage cometl;


void setup() {
  s= loadImage("space.jpg");
  planet= loadImage("pl.gif");
  planet.resize(450, 450);
  cometri=loadImage("cometri.gif");
  cometri.resize(50, 30);
  cometl=loadImage("cometl.gif");
  cometl.resize(50,30);
  size(700, 700);
}

void draw() {
  image(s, 0, 0);
  image(planet, mouseX-225, mouseY-225);
  allComets.add(new Comet());
  allRComets.add(new RComet());
  for (int i=allComets.size ()-1; i>=0; i--) {
    Comet currentComet=allComets.get(i);
    currentComet.display();
    currentComet.move();
  }
  for (int i=allRComets.size ()-1; i>=0; i--) {
    RComet currentRComet=allRComets.get(i);
    currentRComet.display();
    currentRComet.move();
  }
}

class Comet {
  PVector loc, vel, acc;
  float sz;

  Comet() {
    loc= new PVector(-50, mouseY);
    vel= new PVector(random(-1, .8), random(-1, .8));
    acc= new PVector(.08, 0);
    sz= random(3, 15);
  }

  void display() {
    fill(255,0,0,63);
    image(cometl, loc.x, loc.y);
  }

  void move() {
    loc.add(vel);
    vel.add(acc);
  }
}

class RComet {
  PVector loc, vel, acc;
  float sz;

  RComet() {
    loc= new PVector(width+20, mouseY);
    vel= new PVector(random(-1, 1), random(-1, 1));
    acc= new PVector(-.08, 0);
    sz= random(3, 15);
  }
  void display() {
    image(cometri,loc.x, loc.y);
  }
  void move() {
    loc.add(vel);
    vel.add(acc);
  }
}

