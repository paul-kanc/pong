
class Start
{
  float x = width/2, xv = 5, y = height/2 - 50, yv = 5;
    
  void draw()
  {
    background(0);
    
    textFont(fontTitle);
    textAlign(CENTER);
    fill(255);
    text("PONG", width/2, 150);
    
    textFont(fontBody);
    textSize(50);
    text("By Paulius Kancleris", width/2, 200);
    
    fill(255);
    ellipse(x, y, 30, 30);
    
    x = x + xv;
    y = y + yv;
    
    if (y == height/2 - 100 || y == height/2)
    {
      yv = -yv;
    }
    
    if (x > width - 15 || x < 15)
    {
      xv = -xv;    
    }
    
    fill(255);
    textSize(50);
    text("Press 'R' To Restart", width/2, 450);
    text("Press 'ESC' To Quit", width/2, 500);
    
    textFont(fontBody);
    text("Press SPACE To Begin", width/2, 600);
  }
}
