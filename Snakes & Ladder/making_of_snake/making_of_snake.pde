ArrayList<Integer> x_pos = new ArrayList<Integer>();
ArrayList<Integer> y_pos = new ArrayList<Integer>();
int hgt = 24, wdt =24;
int block = 20;
int dir = 2;
int []x_dir = {0,0,1,-1};
int []y_dir = {1,-1,0,0};

void setup()
{
  size(500,500);
  x_pos.add(4);
  y_pos.add(15);
}

void draw()
{
  background(0);
  fill(255);
  for(int i=0; i<x_pos.size(); i++)
  rect(x_pos.get(i)*block, y_pos.get(i)*block,block,block);
  
  if(frameCount%8==0)
  {
    x_pos.add(0,x_pos.get(0)+x_dir[dir]);
    y_pos.add(0,y_pos.get(0)+y_dir[dir]);
    
    x_pos.remove(x_pos.size()-1);
    y_pos.remove(y_pos.size()-1);
  }
}

void keyPressed()
{
  int new_dir = keyCode;
  if(keyCode == DOWN)
     new_dir=0;
  else if(keyCode ==UP)
     new_dir = 1;
  else if(keyCode == LEFT)
     new_dir= 3;
  else if(keyCode == RIGHT)
     new_dir = 2;
     
  else
      new_dir =-1;
  if(new_dir!= -1)
      dir= new_dir;
}
