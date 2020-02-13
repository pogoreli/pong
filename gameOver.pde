void gameOver()
{
  background(0,0,0);
  
  if(keyPressed)
  {
    if(random(1,2)==1)
    {
    rand=random(1,2);
    }else
    {
    rand=random(-2,-1);
    }
    directionX=rand;
    ballX=random(0,width);
    ballY=20;
    ballSize=20;
    directionY=2;
    pedalHeight=20;
    score=0;
    CrazyRainbowBall=false;
    timer=0;
    
      allow=true;
      mode="game";
  }
}
  
