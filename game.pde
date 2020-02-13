int pedalSize;
boolean onAir=false;

float acceleration=0.01;
float rand=1;

float directionX=rand;
float ballX=random(0,width);
float ballY=20;
int ballSize=20;
float directionY=2;
int pedalHeight=20;
int score=0;
boolean CrazyRainbowBall=false;
int timer=0;
boolean allow=true;


void game(int pedalSize)
{
  //float a = directionY/abs(directionY);
  //directionY=map((abs(directionY)+map(score,0,200,0,1))*a,0,100,0,1.5);
// if(allow)
// {
  onAir=true;
  noStroke();
  
  //cleaning the background
  if(!CrazyRainbowBall)
  {
  background(10,10,10);
  }
  
  //defining the pedal location
  int pedalX=mouseX;
  int pedalY=height-30;
  
  //limiting the location of the pedal
  if(pedalX>=width-pedalSize/2)
  {
    pedalX=width-pedalSize/2;
  } else if(pedalX<=0+pedalSize/2)
  {
    pedalX=0+pedalSize/2;
  }
  
  //creating a pedal
  fill(255,255,255);
  rectMode(CENTER);
  rect(pedalX,pedalY,pedalSize,pedalHeight);
  
  //creating a ball
  fill(random(0,255),random(0,255),random(0,255));
  ellipseMode(CENTER);
  ellipse(ballX,ballY,ballSize,ballSize);
  
  //ball vertical movement 
  ballY=ballY+directionY;
  
  //ball horisontal movement
  ballX+=directionX;
  if(ballX>=width || ballX<=0)
  {
    directionX=directionX*(-1);
  }
  
  //defining whether the player got the ball
  if(ballX>=pedalX-(pedalSize/2) && ballX<=(pedalX+pedalSize/2)&& ballY>=pedalY-25 && ballY<=pedalY-5)
  {
    directionY=directionY*(-1);
    score++;
  }
  if(ballY<=0)
  {
    directionY=directionY*(-1);
  }
  println(score);
  score(score);
  
  //crazy rainbow
  if(mousePressed)
  {
    CrazyRainbowBall=true;
  }
  if(CrazyRainbowBall)
  {
    timer++;
    if(timer>=1000)
    {
      CrazyRainbowBall=false;
      timer=0;
    }
  }
  
  if(ballY>=pedalY+5)
  {
  mode="gameOver";
  }
 }
  
//}
