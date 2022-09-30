
class EndVPC
{
  float trophyY = -200, v = 3.5;
  
  void draw()
  {
    background(0);
    
    if (leftScoreInt == 3)
    {
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
        
        textFont(fontTitle);
        textAlign(CENTER);
        fill(255);
        textSize(150);
        text("YOU WIN!", random(width/2 - 1, width/2 + 1), random(height/3 - 1, height/3 + 1));
        
        textFont(fontBody);
        textAlign(CENTER);
        fill(255);
        textSize(50);
        text("Press 'ESC' To Quit", width/2, 525);
      
        textFont(fontBody);
        textAlign(CENTER);
        fill(255);
        text("Press 'R' To Restart", width/2, 600);
      }
    }
    
    if (rightScoreInt == 3)
    {
      textFont(fontTitle);
      textAlign(CENTER);
      fill(255);
      textSize(150);
      text(leftScoreInt, width/2 - 70, height/7);
      text(":", width/2, height/7);
      text(rightScoreInt, width/2 + 70, height/7);
      
      textFont(fontTitle);
      textAlign(CENTER);
      fill(255);
      textSize(150);
      text("YOU LOSE!", random(width/2 - 1, width/2 + 1), random(height/3 - 1, height/3 + 1));
      
      image(skull, width/2 - 100, height/2 - 75, 200, 200);
      
      textFont(fontBody);
      textAlign(CENTER);
      fill(255);
      textSize(50);
      text("Press 'ESC' To Quit", width/2, 525);
    
      textFont(fontBody);
      textAlign(CENTER);
      fill(255);
      text("Press 'R' To Restart", width/2, 600);
    }
  }
}
