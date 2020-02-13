String mode="hello";

void setup()
{
  size(640,360);
  background(0,0,0);
if(random(1,2)==1)
{
  rand=random(1,2);
}else
{
  rand=random(-2,-1);
}
allow=false;
}

void draw()
{
  if(mode=="hello")
  {
    hello();
  }else if(mode=="game")
  {
    game(pedalSize);
  }else if(mode=="gameOver")
  {
    gameOver();
  }
}
