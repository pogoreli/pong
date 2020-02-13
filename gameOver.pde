int v=0;

void gameOver()
{
  //Cleaning the background
  background(0,0,255);
  
  //Text
  textAlign(CENTER,CENTER);
  textSize(50);
  fill(252,252,3);
  text("Game Over!",width/2,height/4);
  text("Your score: ",(width/2)-10,height/2);
  text(score,(width/2)+150,height/2);
  
  textSize(20);
  text("To continue, please, press any button",(width/2),(height/4)*3);
  
  //return to the main menu
  int buttonHeight=20;
  int buttonWidth=80;
  int buttonX1=width-buttonWidth;
  int buttonY=height-buttonHeight;
  String buttonText="Main menu";
  
  rectMode(CORNER);
  fill(255,255,255);
  rect(buttonX1,buttonY,buttonWidth,buttonHeight);
  fill(0,0,0);
  textSize(10);
  text(buttonText,(buttonX1+buttonWidth/2)-10,(buttonY+buttonHeight/2));
  
  if(mousePressed)
  {
    if(mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth && mouseY>=buttonY && mouseY<=buttonY+buttonHeight)
    {
      mode="hello";
    }
  }
  
  //Blinking text
  v++;
  if(v>=50)
  {
    fill(0,0,255);
    rectMode(CENTER);
    rect((width/2),(height/4)*3, width, 30);
    if(v>=100)
    {
      v=0;
    } 
  }
  
  //Restarting the game
  if(keyPressed)
  {
    restart();
  }
}
  
