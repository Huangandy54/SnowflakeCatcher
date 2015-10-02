Snowflake [] storm;
int more;
void setup()
{
  //your code here
  size(500,500);
  background(0);
  storm = new Snowflake[250+more];
  for(int i = 0; i < storm.length; i++) {
    storm[i] = new Snowflake(); 
  }
}
void draw()
{
  //your code here
  
  for(int i = 0; i <storm.length; i++) {
    storm[i].erase();
    storm[i].lookDown();
    storm[i].move();
    storm[i].wrap();
    storm[i].show();
  }
 
}
void mouseDragged()
{
  //your code here
  noStroke();
  fill(200,200,200);
  ellipse(mouseX,mouseY,15,15);
}

class Snowflake
{
  //class member variable declarations
  int x,y;
  boolean isMoving;
  Snowflake()
  {
    //class member variable initializations
    x = (int)(Math.random()*501);
    y = (int)(Math.random()*501);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255,255,255);
    ellipse(x,y,5,5);
  }
  void lookDown()
  {
    //your code here
    if(((y>0)&&(y<500))&&(get(x,y+6)==color(200,200,200))) {
      isMoving = false;
    } 
    else 
    {
      isMoving = true; 
    }
  }
  void erase()
  {
    //your code here
    fill(0,0,0);
    ellipse(x,y,7,7);
  }
  void move()
  {
    //your code here
    if(isMoving == true) {
      y = y+1;
    } 
    else 
    {
      y = y + 0;
    }
  }
  void wrap()
  {
    //your code here
    if(y>500) {
      y = 0; 
      x = (int)(Math.random()*501);
    }
  }
}
