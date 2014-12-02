int x;

void setup(){
  background(0);
  size(600,600);
}

void draw(){
  fill(#FBFF3B);
    x++;
  ellipse(random(width),random(height),5,5);
  fill(x%1,0,0,30);
  rect(0,0,width,height);
}
