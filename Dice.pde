void setup()
{
  size(300,300);
  background(0);
  noLoop();

}
void draw()
{
       background(0);
  int sum = 0;
  for( int a = 15; a <300; a += 60){
      for( int b = 20; b < 260 ; b += 60){
        Die bob = new Die (a,b);
        bob.show();
        sum = sum + bob.num; 
      }
    }
        fill(255,255,255);
       textSize(25);
       text("T o t a l : " + sum ,75,270);

    
}
void mousePressed()
{

  redraw();
}
class Die 
{
    int num;
    int myX; 
    int myY;
    int dieSize;
    Die(int x, int y) 
    {
        num = (int)(Math.random()*6 + 1);
        myX = x;
        myY = y;
        dieSize = 30;
    }
    void roll()
    {
        num = (int)(Math.random()*6 + 1);
    }
    void show()
    {         
        noStroke();
        fill(210,180,140);
        rect(myX,myY,dieSize,dieSize);
        fill(0);
        if (num == 6){
          ellipse(myX+10,myY+7,2,2);
          ellipse(myX+10,myY+15,2,2);
          ellipse(myX+10,myY+23,2,2);
          ellipse(myX+20,myY+7,2,2);
          ellipse(myX+20,myY+15,2,2);
          ellipse(myX+20,myY+23,2,2);
        } else if (num == 5){
          ellipse(myX+10,myY+7,2,2);
          ellipse(myX+10,myY+15,2,2);
          ellipse(myX+10,myY+23,2,2);
          ellipse(myX+20,myY+7,2,2);
          ellipse(myX+20,myY+15,2,2);
        } else if (num == 4){
          ellipse(myX+10,myY+10,2,2);
          ellipse(myX+10,myY+20,2,2);
          ellipse(myX+20,myY+10,2,2);
          ellipse(myX+20,myY+20,2,2);
        } else if (num == 3){
          ellipse(myX+10,myY+10,2,2);
          ellipse(myX+10,myY+20,2,2);
          ellipse(myX+20,myY+10,2,2);
        } else if (num == 2){
          ellipse(myX+10,myY+15,2,2);
          ellipse(myX+20,myY+15,2,2);
        } else if (num == 1){
          ellipse(myX+15,myY+15,2,2);
        }

       

    }
}
