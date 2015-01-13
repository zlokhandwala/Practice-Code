int x;
int y;
int sz;
int xspeed=5;
int yspeed=5;
int lx,rx;
int ly,ry;
int pw;
int ph;
int p,d;


void setup(){
  size(800,600);
  x=width/2;
  y=height/2;
  sz=20;
  lx=10;
  pw=20;
  ph=100;
  p=0;
  d=0;
  //frameRate(20);
}

void draw(){
  background(0);
  fill(#FF8B2C);
  ellipse(x,y,sz,sz);
  x+=xspeed;
  y+=yspeed;
  if(y>height-sz/2 || y-sz/2 <0){
    yspeed*=-1;
  }
  
  //leftpaddle
  ly=mouseY;
  fill(#94FF31);
  rect(lx,ly,pw,ph); 
  if(x <= lx + 20 && y < ly + ph && y > ly){
    xspeed=abs(xspeed);
  }
  
  //rightpaddle
  rx= 770;
  fill(#31FFFA);
  rect(rx,ry,pw,ph);
  if (keyPressed){
    if (key== 's'){
      ry+=18;
    }
  }
    if (keyPressed){
      if (key== 'w'){
        ry-=18;
      }
    }
    if(x+10 >= rx && y <=ry + ph && y >= ry){
        xspeed=-abs(xspeed);
      }
    
  
  //left score
  fill(#94FF31);
  text(d,300,300);
  if(x>=width){
    d++;
    x=width/2;
  }
  
  //right score
  fill(#31FFFA);
  text(p,500,300);
  textSize(40);
  if(x<=0){
    p++;
    x=width/2;
  }
}


  
  
      


