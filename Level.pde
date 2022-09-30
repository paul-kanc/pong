
class Level
{
  void draw()
  {
    background(0);
    
    textFont(fontTitle);
    textAlign(CENTER);
    fill(255);
    text("PONG", width/2, 150);
    
    textFont(fontBody);
    textSize(75);
    text("Use '1', '2' And '3' To", width/2, 250);
    text("Select The Difficulty", width/2, 300);
    
    text("1", width*2/9 - 75, 400);
    text("2", width*5/9 - 75, 400);
    text("3", width*8/9 - 75, 400);
    
    textSize(50);
    text("Easy Peasy ", width*2/9 - 75, 450);
    text("Leamon Squeazy", width*2/9 - 75, 475);
    text("Kinda Hard, NGL", width*5/9 - 75, 450);
    text("I have rallied", width*8/9 - 75, 450);
    text("with this difficulty", width*8/9 - 75, 475);
    text("for 40 mins, trust", width*8/9 - 75, 500);
    text("me, you won't win.", width*8/9 - 75, 525);
  }
}
