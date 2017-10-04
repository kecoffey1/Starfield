star [] k;


void setup() {
  size(1000,1000);
   k = new star[1000];
  for (int i = 0; i < k.length ; i ++) {
   k[i] = new star(500,500);
  }
}
int t = 20;
int n = 0;
void draw() {
  if(n == 20) {
    n = 0;
    t += 1;
  }
  n += 1;
  background(0);
  
  
      for (int i = 0; i < 20; i ++) {
       
      k[t - i].move();
      k[t - i ].show();
       
      }

}
class oddBall {
  int myX, myY;
  float size;
  double r1;
    oddBall(float ize, int x, int y, double r) {
      myX = x;
      size = ize; 
      myY = y;
      r1 = r;
    }
    void show() {
      if (r1 > .5) {
      fill(0,255,0);
     ellipse(myX,myY,size,size);   
      fill(100,100,100);
   
    ellipse(myX,myY,size*3,size/2);
      } else { 
        fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     ellipse(myX,myY,size,size);   
      fill(100,100,100);
   
    ellipse(myX,myY,size*3,size/2);
      }
    }
}
class star {
  
  int myX, myY;
  double addX, addY;
  float size;
  
  oddBall odd;
    double r = Math.random();
    double r1 = Math.random();
    double r3 = Math.random();
  star(int x, int y) {
    myX = x;
    myY = y; 
    addX = r*20-10;
    addY = r1*20-10;
    size = 0;
  }
  void show() {
    if (addX >= -15 && addX <= 15 && addY >= -1 && addY <= 1) {
      odd = new oddBall(size, myX,myY, r3);
      odd.show();
    } else {
    fill(255);
   
    ellipse(myX,myY,size,size);
  }
  }
  void move() {
     myX += addX;
    myY += addY; 
    size += .4;
  }
}