
class ScoreVPC
{
  void draw()
  {
    background(0);
    
    textFont(fontBody);
    fill(255);
    textSize(70);
    textAlign(RIGHT);
    text("Player", width/2 - 70, height/2 - 200);
    textAlign(LEFT);
    text("Computer", width/2 + 70, height/2 - 200);
    
    textFont(fontTitle);
    textAlign(CENTER);
    textSize(300);
    text(leftScoreInt, width/2 - 130, height/2);
    text(":", width/2, height/2);
    text(rightScoreInt, width/2 + 130, height/2);
    
    if (leftScoreInt == 2)
    {
      textFont(fontBody);
      textSize(70);
      textAlign(RIGHT);
      text("1 Point Left!", width/2 - 70, height*2/3);
    }
    
    if (rightScoreInt == 2)
    {
      textFont(fontBody);
      textSize(70);
      textAlign(LEFT);
      text("1 Point Left!", width/2 + 70, height*2/3);
    }
    
    textFont(fontBody);
    textAlign(CENTER);
    text("Press SPACE To Continue", width/2, 600);
  }
}
