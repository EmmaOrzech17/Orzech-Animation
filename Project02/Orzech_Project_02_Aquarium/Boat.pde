//boat

class boat extends Actor{
  //no new fields
  public boat(float xPos, float yPos){
    super(xPos, yPos);
  }
  
  void drawBoat(){
   fill(250,246,237);
  triangle(x+35, y-15, x+70, y-50, x+70, y-15); 
  fill(111,21,21);
  rect(x+70, y-50, 10, 65);
  fill(247,17,143);
  quad(x, y, x+25, y+25, x+75, y+25, x+100, y);
    
  }
  
  
  
}
