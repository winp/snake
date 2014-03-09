snake Snake;
food Food;
int MoveSpeed = 10;
int Score;
int MoveDir;

void action_Init()
{
  MoveDir = 0;
  Snake = new snake(color(220, 160, 160), color(150, 200, 150), 10);
  Snake.Init(300, 100, MoveDir);
  Food = new food(100, 100);
}


void action_MainMenu()
{
  if(MainBckImg == null) MainBckImg = loadImage("");
}


void action_Update()
{
  if(frameCount % MoveSpeed == 0)
    Snake.Move(MoveDir);
  Snake.Draw();
  Food.Draw();
  action_Menu();
}


void action_Menu()
{
  fill(220);
  textAlign(RIGHT, CENTER);
  textSize(24);
  text(Score, 630, 20);
  textAlign(LEFT, CENTER);
  text("Snake 0.2", 5, 20);
}


void keyPressed()
{
  char inp = key;
  inp = (inp >= 'A' && inp <= 'Z')? (char) (inp - 'A' + 'a') : inp;
  switch(inp)
  {
    case 'w':
    MoveDir = 3; break;
    case 's':
    MoveDir = 1; break;
    case 'a':
    MoveDir = 2; break;
    case 'd':
    MoveDir = 0; break;
  }
}
