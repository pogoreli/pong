//Global variables for choice
String page="hello";
int pedal=0;

void option(String kind, int parameter)
{
  if(kind=="hello")
  {
    hello();
    page="hello";
    pedal=0;
  }else if(kind=="play")
  {
    game(parameter);
    page="play";
    pedal=parameter;
  }
}
