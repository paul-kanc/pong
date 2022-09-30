
//To control the paddles, you have to keep pressing the move button. This is so the game is slightly more difficult.

//If you would like to control the individual sounds of the game, use the variables bellow this comment. The volume ranges from 0 to 1.

float musicVol = 0.3, menuVol = 0.15, hitVol = 0.05, wallVol = 0.3, pointVol = 0.1, PCpointVol = 0.09, victoryVol = 0.5, PCvictoryVol = 0.09;

Start start;
Mode mode;
Level level;
GameVPC gameVPC;
Game game;
ReadyVPC readyVPC;
Ready ready;
ScoreCount scoreCount;
ScoreVPC scoreVPC;
Score score;
EndVPC endVPC;
End end;

boolean startScrn;

PFont fontTitle;
PFont fontBody;

boolean modeScrn;

float one;

boolean levelScrn;

float PCSpeed = 0, rnd = 0;

boolean gameScrnVPC;
boolean gameScrn;

float xBall;
float yBall;
float diameter;

float xBallSpeed;
float yBallSpeed;
boolean xSpeed;
boolean ySpeed;

float xLeftPaddle;
float yLeftPaddle;

float xRightPaddle;
float yRightPaddle;

float w, s, up, dwn;

boolean readyScrnVPC;
boolean readyScrn;

boolean scoreCountB;

int leftScoreInt;
int rightScoreInt;

boolean scoreScrnVPC;
boolean scoreScrn;

boolean endScrnVPC;
boolean endScrn;

PImage trophy;
PImage skull;

import processing.sound.*;

SoundFile music, menu, hit, wall, point, PCpoint, victory, PCvictory;
Sound musicV, menuV, hitV, wallV, pointV, PCpointV, victoryV, PCvictoryV;

int musicI = 0;

void setup()
{
  size(1200, 700);
  
  startScrn = true;
  start = new Start();
  
  modeScrn = false;
  mode = new Mode();
  
  levelScrn = false;
  level = new Level();
  
  gameScrnVPC = false;
  gameVPC = new GameVPC();
  
  gameScrn = false;
  game = new Game();
  
  readyScrnVPC = false;
  readyVPC = new ReadyVPC();
  
  readyScrn = false;
  ready = new Ready();
  
  scoreCountB = false;
  scoreCount = new ScoreCount();
  
  scoreScrnVPC = false;
  scoreVPC = new ScoreVPC();
  
  scoreScrn = false;
  score = new Score();
  
  endScrnVPC = false;
  endVPC = new EndVPC();
  
  endScrn = false;
  end = new End();
  
  fontTitle = createFont("zx_spectrum-7_bold.ttf", 200);
  fontBody = createFont("zx_spectrum-7.ttf", 100);
  
  trophy = loadImage("trophy.png");
  skull = loadImage("skull.jpg");
  
  music = new SoundFile(this, "retro music.wav");
  menu = new SoundFile(this, "menu.wav");
  hit = new SoundFile(this, "return.wav");
  wall = new SoundFile(this, "wall.wav");
  point = new SoundFile(this, "point.wav");
  PCpoint = new SoundFile(this, "PCpoint.wav");
  victory = new SoundFile(this, "victory.wav");
  PCvictory = new SoundFile(this, "PCvictory.wav");
  
  musicV = new Sound(this);
  menuV = new Sound(this);
  hitV = new Sound(this);
  wallV = new Sound(this);
  pointV = new Sound(this);
  PCpointV = new Sound(this);
  victoryV = new Sound(this);
  PCvictoryV = new Sound(this);
}

void draw()
{
  if (startScrn == true)
  {
    start.draw();
    musicI = musicI + 1;
    
    if (musicI == 1)
    {
      musicV.volume(musicVol);
      music.loop();
    }
  }
  
  if (modeScrn == true)
  {
    mode.draw();
  }
  
  if (levelScrn == true)
  {
    level.draw();
  }
  
  if (readyScrnVPC == true)
  {
    readyVPC.draw();
  }
  
  if (readyScrn == true)
  {
    ready.draw();
  }
  
  if (gameScrnVPC == true)
  {
    gameVPC.draw();
  }
  
  if (gameScrn == true)
  {
    game.draw();
  }
  
  if (scoreCountB == true)
  {
    scoreCount.draw();
  }
  
  if (gameScrn == true)
  {
    if (xBall == 0 + diameter/2)
    {
      if (leftScoreInt != 3 && rightScoreInt != 3)
      {
        pointV.volume(pointVol);
        point.play();
      }
      else
      {
        victoryV.volume(victoryVol);
        victory.play();
      }
      
      scoreScrn = true;
      gameScrn = false;
      scoreCountB = false;
    }
    
    else if (xBall == width - diameter/2)
    {
      if (leftScoreInt != 3 && rightScoreInt != 3)
      {
        pointV.volume(pointVol);
        point.play();
      }
      else
      {
        victoryV.volume(victoryVol);
        victory.play();
      }
      scoreScrn = true;
      gameScrn = false;
      scoreCountB = false;
    }
  }
  
  else if (gameScrnVPC == true)
  {
    if (xBall == 0 + diameter/2)
    {
      if (leftScoreInt != 3 && rightScoreInt != 3)
      {
        PCpointV.volume(PCpointVol);
        PCpoint.play();
      }
      else
      {
        PCvictoryV.volume(PCvictoryVol);
        PCvictory.play();
      }
    
      scoreScrnVPC = true;
      gameScrnVPC = false;
      scoreCountB = false;
    }
    
    else if (xBall == width - diameter/2)
    {
      if (leftScoreInt != 3 && rightScoreInt != 3)
      {
        pointV.volume(pointVol);
        point.play();
      }
      else
      {
        victoryV.volume(victoryVol);
        victory.play();
      }
      
      scoreScrnVPC = true;
      gameScrnVPC = false;
      scoreCountB = false;
    }
  }
  
  if (scoreScrn == true)
  {
    score.draw();
  }
  
  if (scoreScrnVPC == true)
  {
    scoreVPC.draw();
  }
  
  if (scoreScrn == true)
  {
    if (leftScoreInt == 3 || rightScoreInt == 3)
    {
      endScrn = true;
      scoreScrn = false;
    }
  }
  
  if (scoreScrnVPC == true)
  {
    if (leftScoreInt == 3 || rightScoreInt == 3)
    {
      endScrnVPC = true;
      scoreScrnVPC = false;
    }
  }
  
  if (endScrn == true)
  {
    end.draw();
  }
  
  else if (endScrnVPC == true)
  {
    endVPC.draw();
  }
}
  
void keyPressed()
{  
  if (startScrn == true)
  {    
    if (key == ' ')
    {
      startScrn = false;
      modeScrn = true;
    }
  }
    
  if (modeScrn == true)
  {
    if (key == '2')
    {
      modeScrn = false;
      readyScrn = true;
      
      xBall = width/2;
      yBall = random(height/7, height*6/7);
      
      xLeftPaddle = 50;
      yLeftPaddle = height/2 - 50;
    
      xRightPaddle = width - 50;
      yRightPaddle = height/2 - 50;
      
      leftScoreInt = 0;
      rightScoreInt = 0;
      
      music.stop();
      
      menuV.volume(menuVol);
      menu.play();
    }
    else if (key == '1')
    {
      one = one + 1;
      
      if (one == 1)
      {
        modeScrn = false;
        levelScrn = true;
        
        xBall = width/2;
        yBall = random(height/7, height*6/7);
        
        xLeftPaddle = 50;
        yLeftPaddle = height/2 - 50;
      
        xRightPaddle = width - 50;
        yRightPaddle = height/2 - 50;
        
        leftScoreInt = 0;
        rightScoreInt = 0;
      }
    }
  }
  
  if (levelScrn == true)
  {
    if (key == '1')
    {
      one = one + 1;
      
      if (one == 1)
      {
        rnd = -80;
        PCSpeed = 6;
        readyScrnVPC = true;
        levelScrn = false;
        
        music.stop();
        
        menuV.volume(menuVol);
        menu.play();
      }
    }
    
    else if (key == '2')
    {
      rnd = -40;
      PCSpeed = 6;
      readyScrnVPC = true;
      levelScrn = false;
      
      music.stop();
      
      menuV.volume(menuVol);
      menu.play();
    }
    
    else if (key == '3')
    {
      rnd = 10;
      PCSpeed = 5;
      readyScrnVPC = true;
      levelScrn = false;
      
      music.stop();
      
      menuV.volume(menuVol);
      menu.play();
    }
  }
  
  if (readyScrn == true)
  {
    if (key == ' ')
    {
      readyScrn = false;
      gameScrn = true;
      scoreCountB = true;
      
      menuV.volume(menuVol);
      menu.play();
    }
  }
  
  else if (readyScrnVPC == true)
  {
    if (key == ' ')
    {
      readyScrnVPC = false;
      gameScrnVPC = true;
      scoreCountB = true;
      
      menuV.volume(menuVol);
      menu.play();
    }
  }
  
  if (gameScrn == true)
  {
    game.keyPressed();
  }
  
  else if (gameScrnVPC == true)
  {
    gameVPC.keyPressed();
  }
    
  if (scoreScrn == true)
  {
    if (key == ' ')
    {
      scoreScrn = false;
      readyScrn = true;
      
      xBall = width/2;
      yBall = random(height/7, height*6/7);
      
      xLeftPaddle = 50;
      yLeftPaddle = height/2 - 50;
    
      xRightPaddle = width - 50;
      yRightPaddle = height/2 - 50;
      
      menuV.volume(menuVol);
      menu.play();
    }
  }
  
  else if (scoreScrnVPC == true)
  {
    if (key == ' ')
    {
      scoreScrnVPC = false;
      readyScrnVPC = true;
      
      xBall = width/2;
      yBall = random(height/7, height*6/7);
      
      xLeftPaddle = 50;
      yLeftPaddle = height/2 - 50;
    
      xRightPaddle = width - 50;
      yRightPaddle = height/2 - 50;
      
      menuV.volume(menuVol);
      menu.play();
    }
  }
  
  if (key == ESC)
  {
    exit();
  }
  
  if (key == 'r' || key == 'R')
  {
    if (startScrn == false && modeScrn == false && levelScrn == false)
    {
      musicI = 0;
      
      menuV.volume(menuVol);
      menu.play();
    }
    
    gameScrn = false;
    modeScrn = false;
    levelScrn = false;
    readyScrn = false;
    scoreCountB = false;
    scoreScrn = false;
    endScrn = false;
    
    gameScrnVPC = false;
    readyScrnVPC = false;
    scoreScrnVPC = false;
    endScrnVPC = false;
    victory.stop();
    PCvictory.stop();
    
    rnd = 0;
    PCSpeed = 0;
    
    startScrn = true;
  }
}
  
void keyReleased()
{
  if (key == '1')
  {
    one = 0;
  }
  
  if (gameScrn == true)
  {
    game.keyReleased();
  }
  
  if (gameScrnVPC == true)
  {
    gameVPC.keyReleased();
  }
}
  
