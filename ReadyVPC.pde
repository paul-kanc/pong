
class ReadyVPC
{
  void draw()
  {
    background(0);
    
    for (float x = 2.5; x < height - 50; x = x + 10)
    {
      fill(255);
      rect(width/2 - 5, x * 10, 20, 50);
    }
    
    textFont(fontTitle);
    textAlign(CENTER);
    fill(255);
    textSize(100);
    text(leftScoreInt, width/2 - 70, 70);
    text(rightScoreInt, width/2 + 70, 70);
    
    fill(255);
    noStroke();
    rect(xLeftPaddle, yLeftPaddle, 10, 100);
    rect(xRightPaddle, yRightPaddle, 10, 100);
    
    textFont(fontBody);
    textAlign(CENTER);
    fill(255);
    textSize(50);
    text("Player", width/4, 300);
    text("Use 'UP' and 'DOWN'", width/4, 350);
    
    textFont(fontBody);
    text("Press SPACE To Start", width/2, 600);
  }
}
