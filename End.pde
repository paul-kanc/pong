
class End
{
  float trophyY = -200, v = 3.5;
  
  void draw()
  {
    background(0);
    
    image(trophy, width/2 - 100, trophyY = trophyY + v, 200, 200);
    
    if (trophyY > height/3 + 50)
    {
      v = 0;
      
      textFont(fontTitle);
      textAlign(CENTER);
      fill(255);
      textSize(150);
      text(leftScoreInt, width/2 - 70, height/7);
      text(":", width/2, height/7);
      text(rightScoreInt, width/2 + 70, height/7);
      
      if (leftScoreInt == 3)
      {
        text("Left Player WINS!", random(width/2 - 1, width/2 + 1), random(height/3 - 1, height/3 + 1));
      }
      
      if (rightScoreInt == 3)
      {
        text("Right Player WINS!", random(width/2 - 1, width/2 + 1), random(height/3 - 1, height/3 + 1));
      }
      
      textFont(fontBody);
      textSize(50);
      text("Press 'ESC' To Quit", width/2, 525);
    
      textFont(fontBody);
      text("Press 'R' To Restart", width/2, 600);
    }
  }
}
