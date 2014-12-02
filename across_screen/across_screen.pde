int x;
void setup()
{size(500,500);
x=0;
}

void draw()
{
  
  fill(255,0,100);
  background(0);
  ellipse(x,width/2,20,20);
  x=x+5;
  if(x > 500)
 x=0;} 
    

