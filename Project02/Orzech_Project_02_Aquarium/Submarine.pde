//submarine

class submarine extends Actor{
  //no new fields
  public submarine (float xPos, float yPos){
  super (xPos, yPos);
}

void drawSubmarine(){
  float s= size;
  
  stroke(0,0,0);
  fill(162, 159, 159);
  rect(x+4*s, y-8*s, 1*s, 5*s);
  ellipse (x, y,15*s, 8*s);//body of sub
  fill(79,107,162);
  ellipse(x-4*s, y, 2*s, 2*s);//windows
  ellipse(x, y, 2*s, 2*s);
  ellipse (x+4*s, y, 2*s, 2*s);
  
  
}//end draw submarine
}//end class submarine
