

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
    //option(page,0);
    //println(pedal);
    //game(100);
    //hello();
    hello();
    if(!onAir)
    {
    CrazyRainbowBall=false;
    }
    option("play", 150);
}



//void hello()//the inicial menu
//{
//  //creating a space background
//  for(int i=0; i<=width;i++)
//  {
//    rectMode(CORNER);
//    fill(0,0,i);
//    noStroke();
//    rect(i,0,width/255,height);
//  }
//  //creating stars
//  for(int i=0; i<=100; i++)
//  {
//    fill(255,255,255);
//    noStroke();
//    ellipse(random(0,width),random(0,height), random(1,3), random(1,3));
//  }
  
//  //buttons
//  int userChoice=0;
//  userChoice=button();
 
//  println(userChoice);
  
//  if(userChoice>0)
//  {
//    option("play", userChoice);
//  }
//}


  
