PVector loc, vel,acc;
PVector mouse;
float sz;
void setup() {
  size(800, 600);  
  loc= new PVector(width/2, height/2);
  vel= PVector.random2D();
  acc= new PVector(0,0);
  mouse= new PVector();
  sz=50;
}

void draw() {
  background(0);
  mouse.set(mouseX, mouseY);
  vel.add(acc);
  loc.add(vel);

  if (loc.dist(mouse) < sz/2) {
    fill(45, 45, 200);
    if (loc.x < mouse.x) {
      vel.x= -abs(vel.x);
    } else {
      vel.x=abs(vel.x);
    }
    if(loc.y < mouse.y){
      vel.y=-abs(vel.y);
    } else {
      vel.y=abs(vel.y);
    }
  } else {
    fill(20,150,30);
  }
    ellipse(loc.x, loc.y, sz, sz);
    
    if(loc.x+ sz/2 >width || loc.x -sz/2 <0){
      vel.x*=-1;
    }
    if(loc.y +sz/2 > height || loc.y-sz/2 <0){
      vel.y*=-1;
    }
    ellipse(mouseX,mouseY,sz/2,sz/2);
}
    

