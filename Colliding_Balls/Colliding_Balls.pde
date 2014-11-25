int count= 100;

//declare variables
PVector [] loc= new PVector[count];
PVector [] vel= new PVector[count];
PVector [] acc = new PVector [count];
float [] sz = new float [count];

void setup() {
  size(800, 600); 
  //initialize 
  for (int i=0; i<count; i++) {
    sz[i]= random(1,10);
    loc[i]= new PVector(random(sz[i], width-sz[i]), random(sz[i], height-sz[i]));
    vel[i]= PVector.random2D();
    acc[i] = new PVector(0, 0);
  }
}

void draw() {
  background(0);
  for (int i=0; i<count; i++) {
    //to make balls move
    vel[i].add(acc[i]);
    loc[i].add(vel[i]);

    //if balls are touching, make them bounce off each other
    for (int j=0; j<count; j++) {
      if (i!=j) {
        if (loc[i].dist(loc[j]) < sz[i]/2 + sz[j]/2) {
          if (loc[i].x < loc[j].x) {
            vel[i].x= -abs(vel[i].x);
            vel[j].x=abs(vel[j].x);
          } else {
            vel[i].x=abs(vel[i].x);
            vel[j].x=-abs(vel[j].x);
          }
          if (loc[i].y < loc[j].y) {
            vel[i].y=-abs(vel[i].y);
            vel[j].y=abs(vel[j].y);
          } else {
            vel[i].y=abs(vel[i].y);
            vel[j].y=-abs(vel[j].y);
          }
        }
      }
    }


    //draw balls
    fill(100, 50, 100);
    ellipse(loc[i].x, loc[i].y, sz[i], sz[i]);

    //make balls bounce off wall
    if (loc[i].x+ sz[i]/2 >width || loc[i].x -sz[i]/2 <0) {
      vel[i].x*=-1;
    }
    if (loc[i].y +sz[i]/2 > height || loc[i].y-sz[i]/2 <0) {
      vel[i].y*=-1;
    }
    //if (loc[j].x +sz[j]/2 >width || loc[j].x -sz[j]/2 <0) {
    //vel[j].x*=-1;
    //}
    //if (loc[j].y+sz[j]/2 >height || loc[j].y - sz[j]/2 <0) {
    //vel[j].y*=-1;
    //}
  }
}

