int x=50;
void setup(){
  size(400,400);
  background(40,50,200);
  textSize(50);
}

void draw(){
  fill(x);
}

void mousePressed(){
  if (x==50){
    background(0);
    text("Nadia smells",20,height/2);
  }
}
void mouseReleased(){
  background(40,50,200);
    ellipse(random(height),random(width),random(50),random(50));
}
  

