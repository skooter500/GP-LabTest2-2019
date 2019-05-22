void setup()
{
  size(500, 500);
  
  float thetaInc = TWO_PI / 10.0f;
  for(int i = 0 ; i <= 9 ; i ++)
  {
    float theta = thetaInc * i;
    float x = sin(theta) * 100 + (width / 2);
    float y = -cos(theta) * 100 + (height / 2);
    
    Button b = new Button(i, x, y, random(10, 30));
    buttons.add(b);
  }
  textSize(22);
}

void mousePressed()
{
  if (playerCode.size() == 4)
  {    
    playerCode.clear();
  }
  for(Button b:buttons)
  {
    if (b.pressed(mouseX, mouseY))
    {
      playerCode.add(b.number);
    }
  }
}

ArrayList<Integer> playerCode = new ArrayList<Integer>();

float radius = 100;

ArrayList<Button> buttons = new ArrayList<Button>(); 


void draw()
{
  background(0);
  for(Button b:buttons)
  {
    b.render();
  }
  
  textAlign(CENTER, CENTER);
  for(int i = 0 ; i < playerCode.size(); i ++)
  {
    int val = playerCode.get(i);
    text(val, map(i, 0, 4, 90, width), 50);    
  }
  
  if (playerCode.size() < 4)
  {
    fill(255);
    text("Enter 4 digit code", width / 2, 450);
  }
  else
  {
    if (playerCode.get(0) == 9 && playerCode.get(1) == 2 && playerCode.get(2) == 9 && playerCode.get(3) == 3)
    {
      fill(0, 255, 0);
      text("Correct", width / 2, 450);
    }
    else
    {
      fill(255, 0, 0);
      text("Incorrect", width / 2, 450);
    }
  }
  
  
}
