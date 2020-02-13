void restart()
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
    directionY=1;
    pedalHeight=20;
    score=0;
    CrazyRainbowBall=false;
    timer=0;
    
    CrazyRainbowBall=false;
    
    delay(100);
      
    mode="game";
}
