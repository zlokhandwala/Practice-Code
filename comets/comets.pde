ArrayList<Comet> allComets= new ArrayList<Comet>();
PImage s;


void setup() {
  s= loadImage("space.jpg");
  size(700, 700);

}

void draw() {
    image(s, 0, 0);
    allComets.add(new Comet());
  for (int i=allComets.size()-1; i>=0;i--){
    Comet currentComet=allComets.get(i);
    currentComet.display();
    currentComet.move();
  }
  ellipse(mouseX,mouseY,100,100);
    
}

class Comet {
  PVector loc, vel, acc;
  float sz;

  Comet() {
    loc= new PVector(mouseX+150,mouseY+150);
    vel= new PVector(random(-3,3),random(-4,-2));
    acc= new PVector(.2, 0);
    sz= random(3, 15);
  }

  void display() {
    ellipse(loc.x, loc.y, sz, sz);
  }

  void move() {
    loc.add(vel);
    vel.add(acc);
  }
}

