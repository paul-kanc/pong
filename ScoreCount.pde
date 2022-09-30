
class ScoreCount
{
  {
    leftScoreInt = 0;
    rightScoreInt = 0;
  }
  void draw()
  {
    if (xBall == 0 + diameter/2)
    {
      rightScoreInt = rightScoreInt + 1;
    }
    
    else if (xBall == width - diameter/2)
    {
      leftScoreInt = leftScoreInt + 1;
    }
  }
}
