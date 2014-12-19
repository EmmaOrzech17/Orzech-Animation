//sun

class Sun extends Actor {
  //no new fields
  public Sun (float xPos, float yPos){
    super (xPos, yPos);
  }
  
  void drawSun(){
    float s= size;
    fill(255,235,54);
    stroke(252,186,0);
    strokeWeight(20);
    ellipse (x, y, 5*s, 5*s);
    //line(x-2*s, y, 1*s, 1*s); LINES WOULDNT MOVE
    //line(x+2*s, y, 1*s, 1*s);
    //line (x+5*s, y-3*s, 1*s, 1*s);
    //line (x-5*s, y+3*s, 1*s, 1*s);
  }
  
}//end actor
