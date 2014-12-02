int x=0;
int barwidth=20;

void setup(){
size(500,500);
}

void draw(){
  for(x=0; x<=width; x+=20) {
    for(int y=0;y<=height; y+=20)
    ellipse(x,y,barwidth,barwidth);
  }
 
  }
