int b =25;
float[] x= new float[b];
float[] y= new float[b];
void setup(){
  size(800,800);
    for(int i=b; i>b; i--){
    x[i]=random(width);
    y[i]=random(height);
    }
}

void draw(){
    background(0); 
  x[0]=x[1];
  y[0]=y[1];
  
  x[1]=x[2];
  y[1]=y[2];
  
  x[2]=x[3];
  y[2]=y[3];
  
  x[3]=x[4];
  y[3]=y[4];
  
  x[4]=mouseX;
  y[4]=mouseY;
  
     for(int i=b; i>b; i--){
    fill(250);
    ellipse(x[i],y[i],i*4+38,i*4+38);
     }
  }




