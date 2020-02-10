int yeeYee = 500;

public void setup()
{
  size(400,400);
  background(0);
  fill(255,0,179);
}
public void draw()
{
  background(0);
  sierpinski(0, height, height);
}
public void sierpinski(int x, int y, int z) 
{
  if(z <= yeeYee){
    triangle(x, y, x + z, y, x + z/2, y - z);
  }else {
    sierpinski(x, y, z/2);
    sierpinski(x + z/4, y - z/2, z/2);
    sierpinski(x + z/2, y, z/2);
  }
}
public void keyPressed(){
  if(keyCode == ENTER && yeeYee > 5){
    yeeYee /= 3;
  }
  if(keyCode == TAB && yeeYee < 500){
    yeeYee *= 3;
  }
}
