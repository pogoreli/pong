void hello()//the inicial menu
{
  //creating a space background
  for(int i=0; i<=width;i++)
  {
    rectMode(CORNER);
    fill(0,0,i);
    noStroke();
    rect(i,0,width/255,height);
  }
  //creating stars
  for(int i=0; i<=100; i++)
  {
    fill(255,255,255);
    noStroke();
    ellipse(random(0,width),random(0,height), random(1,3), random(1,3));
  }
  
  textAlign(CENTER,CENTER);
  textSize(50);
  fill(252,252,3);
  text("PONG",width/2,height/4);
  textSize(30);
  text("Don't let the ball leave the screen",(width/2),height/2);
  textSize(12);
  text("To start the game choose the size of the paddle",(width/2)-10,(height/4)*3);

  
  //buttons
  int userChoice=0;
  userChoice=button();
 
//  println(userChoice);
  
  if(userChoice>0)
  {
    pedalSize=userChoice;
    allow=true;
    CrazyRainbowBall=false;
    //mode="game";
    restart();
  } 
}
