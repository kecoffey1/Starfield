Particle [] k = {new OddballParticle(250,250,250,1)};
void setup()
{
  size(500,500);
  k = new Particle[1000];
  for (int i = 0; i < k.length ; i ++) {
    if(i%17== 0) {
       k[i] = new OddballParticle(250,250,Math.random()*360,Math.random()*5);
    } else if (i%100 == 0){
       k[i] = new JumboParticle(250,250,Math.random()*360,Math.random()*5);
    } else {
      k[i] = new NormalParticle(250,250,Math.random()*360,Math.random()*5);
    }
  }
}
void draw()
{
  background(0);
for (int i = 0; i <k.length; i ++) {
  k[i].move();
  k[i].show();
  }

}
class NormalParticle implements Particle
{
    float myX;
  float myY;
  float col = 255;
  double ang; 
  double speed; 
  NormalParticle() {
    
  }
  NormalParticle(int x, int y, double a, double s) {
    myX = x;
    myY = y;
    ang = a;
    speed = s; 
  }
  public void move() {
     myX += (cos((float)ang)) * speed/2;
     myY += (sin((float)ang)) * speed*2;
  }
  public void show() {
    fill(col);
    ellipse(myX, myY,50,50);
  }
}

interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
    float myX;
  float myY;
  float col = (int)(Math.random()*255);
  double ang; 
  double speed; 
  OddballParticle(int x, int y, double a, double s) {
    myX = x;
    myY = y;
    ang = a;
    speed = s; 
  }
  public void move() {
     myX += (cos((float)ang)) * speed/2;
     myY += (sin((float)ang)) * speed*2;
  }
  public void show() {
    fill(255-col,200-col,100+col);
    rect(myX, myY,50,50);
  }
}
class JumboParticle extends NormalParticle
{
  JumboParticle(int x, int y, double a, double s) {
    myX = x; 
    myY = y; 
    speed = s;
    ang = a;
    
  }
  public void show() {
    fill(col);
    ellipse(myX, myY,100,100);
  }
}