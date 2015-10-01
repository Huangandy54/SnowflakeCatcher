Snowflake [] storm;

void setup()
{
  size(500, 500);
  storm=new Snowflake[50];
  for(int i=0;i<storm.length;i++) {
    storm[i]= new Snowflake();
  }
}
void draw()
{
  background(0);
  for (int i = 0; i <storm.length; ++i) {
    storm[i].erase();
    storm[i].lookDown();
    storm[i].move();
    storm[i].wrap();
    storm[i].show();
    println("x: "+storm[i].x);
  }

}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int x,y;
  boolean isMoving;
  Snowflake()
  {
    x=(int)(Math.random()*500);
    y=(int)(Math.random()*20);
    isMoving=true;
  }
  void show()
  {
    fill(255);
    ellipse(x, y, 5, 5);
  }
  void lookDown()
  {
    if(y>0&&y<500&&get(x, y+1)!=color(0)){
      isMoving=false;
    }
    else{
      isMoving=true;
    }
  }
  void erase()
  {
    fill(0);
    ellipse(x, y, 7,7);
  }
  void move()
  {
    if (isMoving==true) {
      y++;
    }
  }
  void wrap()
  {
    if (y>500) {
      y=0;
      x=(int)(Math.random()*500);
    }
  }
}


