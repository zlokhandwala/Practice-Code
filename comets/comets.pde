ArrayList<Comet> allComets= new ArrayList<Comet>();
PImage s;
//ArrayList<Particle> allParticles = new ArrayList<Particle>();

void setup(){
  s= loadImage("space.jpg");
  size(700,700);
  
  //for (int i=0;i<allParticles.length;i++);
}

void draw(){
  image(s,0,0);
  
}

class Comet{
  PVector loc, vel, acc;
  float sz;
  
  Comet(){
    loc= new PVector(width/2, height*.1);


