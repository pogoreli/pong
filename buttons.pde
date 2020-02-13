int button()
{
  //buttons X coordinates
  int buttonX1=width/3-150;
  int buttonX2=(width/3)*2-150;
  int buttonX3=width-150;
  
  //buttons Y coordinates
  int buttonY=height-60;
  
  
  //pedal sizes
  int text1=100;
  int text2=150;
  int text3=200;
  
  //return variable
  int choice=0;
  
  //buttons size
  int buttonWidth=100;
  int buttonHeight=30;
  
  //creation of rectangles
  rectMode(CORNER);
  fill(255,255,255);
  rect(buttonX1,buttonY,buttonWidth,buttonHeight);
  rect(buttonX2,buttonY,buttonWidth,buttonHeight);
  rect(buttonX3,buttonY,buttonWidth,buttonHeight);
  
  //creation of buttons' text
  textAlign(CENTER,CENTER);
  fill(0,0,0);
  text(text1,(buttonX1+buttonWidth/2)-10,(buttonY+buttonHeight/2));
  text("px",(buttonX1+buttonWidth/2)+10,(buttonY+buttonHeight/2));
  text(text2,(buttonX2+buttonWidth/2)-10,(buttonY+buttonHeight/2));
  text("px",(buttonX2+buttonWidth/2)+10,(buttonY+buttonHeight/2));
  text(text3,(buttonX3+buttonWidth/2)-10,(buttonY+buttonHeight/2));
  text("px",(buttonX3+buttonWidth/2)+10,(buttonY+buttonHeight/2));
  
  //check which button is pressed
  if(mousePressed)
  {
    if(mouseX>=buttonX1 && mouseX<=buttonX1+buttonWidth && mouseY>=buttonY && mouseY<=buttonY+buttonHeight)
    {
      
      fill(0,0,0);
      rect(buttonX1,buttonY,buttonWidth,buttonHeight);
      delay(100);
      choice=text1;
    } else if(mouseX>=buttonX2 && mouseX<=buttonX2+buttonWidth && mouseY>=buttonY && mouseY<=buttonY+buttonHeight)
    {
      choice=text2;
      fill(0,0,0);
      rect(buttonX2,buttonY,buttonWidth,buttonHeight);
    } else if(mouseX>=buttonX3 && mouseX<=buttonX3+buttonWidth && mouseY>=buttonY && mouseY<=buttonY+buttonHeight)
    {
      choice=text3;
      fill(0,0,0);
      rect(buttonX3,buttonY,buttonWidth,buttonHeight);
    }
  } 
  //returning the button pressed
  return(choice); 
}
