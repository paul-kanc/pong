
class Mode
{
  void draw()
  {
    background(0);
    
    textFont(fontTitle);
    textAlign(CENTER);
    fill(255);
    text("PONG", width/2, 150);
    
    textFont(fontBody);
    text("Use '1' And '2' To", width/2, 300);
    text("Select The Number Of Players", width/2, 350);
  }
}
