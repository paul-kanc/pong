
class GameVPC
{
  float PCR;
  
  {
    xBall = width/2;
    yBall = random(height/7, height*6/7);
    diameter = 30;
  
    xSpeed = (Math.random() < 0.5);
    if (xSpeed == true)
    {
      xBallSpeed = 5;
    }
    else
    {
      xBallSpeed = -5;
    }
  
    ySpeed = (Math.random() < 0.5);
    if (ySpeed == true)
    {
      yBallSpeed = 5;
    }
    else
    {
      yBallSpeed = -5;
    }
    
    xLeftPaddle = 50;
    yLeftPaddle = height/2 - 50;
    
    xRightPaddle = width - 50;
    yRightPaddle = height/2 - 50;
    
    w = 0;
    s = 0;
    up = 0;
    dwn = 0;
  }
  
  void draw()
  {
    background(0);
    
    for (float x = 2.5; x < height - 50; x = x + 10)
    {
      fill(255);
      rect(width/2 - 5, x * 10, 20, 50);
    }
    
    fill(255);
    noStroke();
    ellipse(xBall, yBall, diameter, diameter);
    
    xBall = xBall + xBallSpeed;
    yBall = yBall + yBallSpeed;
    
    if (xBall == diameter/2 || xBall == width - diameter/2)
    {
      xBallSpeed = -xBallSpeed;
    }
    
    else if (yBall < diameter/2 || yBall > height - diameter/2)
    {
      yBallSpeed = -yBallSpeed;
      wallV.volume(wallVol);
      wall.play();
    }
      
    fill(255);
    noStroke();
    rect(xLeftPaddle, yLeftPaddle, 10, 100);
    
    fill(255);
    noStroke();
    rect(xRightPaddle, yRightPaddle, 10, 100);
      
    if ((xBall + diameter/2 == xRightPaddle) && (yBall + (diameter/2 - 5) > yRightPaddle && yBall - (diameter/2 - 5) < yRightPaddle + 100))
    {
      xBallSpeed = -xBallSpeed;
      hitV.volume(hitVol);
      hit.play();
    }
      
    if ((xBall - diameter/2 == xLeftPaddle + 10) && (yBall + (diameter/2 - 5) > yLeftPaddle && yBall - (diameter/2 - 5) < yLeftPaddle + 100))
    {
      xBallSpeed = -xBallSpeed;
      hitV.volume(hitVol);
      hit.play();
    }
    
    if (((xBall + diameter/2 == xRightPaddle) && (yBall + (diameter/2 - 5) > yRightPaddle && yBall - (diameter/2 - 5) < yRightPaddle + 100)) || xBall == width - diameter/2)
    {
      PCR = random(rnd, 10);
    }
    
    if (xBall >= width*2/3 && xBallSpeed > 0)
    {      
      if (yBall - diameter/2 < yRightPaddle + PCR)
      {
        up = up + 1;
      }
      else
      {
        up = 0;
      }
      
      if (yBall + diameter/2 > yRightPaddle + 100 - PCR)
      {
        dwn = dwn + 1;
      }
        else
      {
        dwn = 0;
      }
    }
    
    else if (xBall < width*2/3 || xBallSpeed < 0)
    {
      if (yRightPaddle + 100 > height/2 + 100)
      {
        up = up + 1;
      }
      else
      {
        up = 0;
      }
      
      if (yRightPaddle < height/2 - 100)
      {
        dwn = dwn + 1;
      }
      else
      {
        dwn = 0;
      }
    }
    
    if (up > PCSpeed)
    {
      up = 0;
    }
    
    if (dwn > PCSpeed)
    {
      dwn = 0;
    }
    
    if (up == 1)
    {
      yRightPaddle = yRightPaddle - 30;
    }
    
    if (dwn == 1)
    {
      yRightPaddle = yRightPaddle + 30;
    }
    
    textFont(fontTitle);
    textAlign(CENTER);
    fill(255);
    textSize(100);
    
    text(leftScoreInt, width/2 - 70, 70);
    text(rightScoreInt, width/2 + 70, 70);
  }
  
  void keyPressed()
  {
    if (keyCode == UP)
    {
      w = w + 1;
      
      if (w == 1)
      {
        yLeftPaddle = yLeftPaddle - 30;
      }
    }
     
    if (keyCode == DOWN)
    {
      s = s + 1;
      
      if (s == 1)
      {
        yLeftPaddle = yLeftPaddle + 30;
      }
    }
  }
  
  void keyReleased()
  {
    if (keyCode == UP)
    {
      w = 0;
    }
      
    if (keyCode == DOWN)
    {
      s = 0;
    }
  }
}
