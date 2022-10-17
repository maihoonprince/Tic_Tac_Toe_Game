ArrayList<Integer> x_pos = new ArrayList<Integer>();
ArrayList<Integer> y_pos = new ArrayList<Integer>();
int hgt = 24, wdt =24;
int block = 20;

void setup(){
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
}
