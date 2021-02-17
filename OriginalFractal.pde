public void setup()
{
  size(400,400);
  background (0);
  myFractal(200, 200, 380);
}

public void draw()
{  

}

public void myFractal(float x, float y, float siz)
{
  int R = (int)(Math.random()*250);
  int G = (int)(Math.random()*250);
  int B = (int)(Math.random()*250);
  strokeWeight(4);
  stroke(R, G, B);
  noFill();
  ellipse(x,y,siz, siz);
  if(siz > 100)
  {
    myFractal (x - siz/4, y, siz/2);
    myFractal(x + siz/4, y, siz/2);
    myFractal (x, y + siz/4, siz/2);
    myFractal(x, y - siz/4, siz/2);
  } 
}
