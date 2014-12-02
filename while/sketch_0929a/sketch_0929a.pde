int x;
int y;
int count;

void setup(){
  size(500,500);
    x=0;
    y=17;
  count=0;
}

void draw(){
  while (x <= width) {
     fill(random(255),random(255),random(255));
     ellipse(x,height/2,20,20);
  x+=2;
}
}
