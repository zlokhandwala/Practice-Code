float x,y;

void setup(){
  size(500,500);
  x=50;
  y=15;
}
void draw(){
  x= mouseX;
  y= mouseY;
  
  background(#FFFFFF);
//FACE
fill(#26CBEA);
ellipse(x,y,20,20);
fill(#E85080);
arc(x,y+3,10,10,0,PI);
line(x-5,y+3,x+5,y+3);
noFill();
arc(x-5,y,4,4,PI,TWO_PI);
arc(x+5,y,4,4,PI,TWO_PI);
noFill();

//LIMBS
line(x,y+10,x,y+15);
line(x-10,y+15,x-15,y+15);
line(x+10,y+15,x+15,y+15);
//legs
line(x-5,y+35,x-5,y+55);
line(x+5,y+35,x+5,y+55);
//arms
fill(#FFF52E);
triangle(x-20,y+30,x-10,y+30,x-15,y+35);
triangle(x+10,y+30,x+20,y+30,x+15,y+35);
line(x-15,y+15,x-15,y+30);
line(x+15,y+15,x+15,y+30);
fill(#26CBEA);

//BODY
rect(x-10,y+15,20,20);

noFill();
fill(#FFF52E);
//feet
triangle(x-5,y+55,x,y+60,x-10,y+60);
triangle(x+5,y+55,x+10,y+60,x,y+60);
}
