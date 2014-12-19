//extends actor
class Fish extends Actor{
  //no new fields
  public Fish(float xPos, float yPos){
   super (xPos, yPos); 
  }
  //fishy time
void drawFish() {
  float s= size;
  stroke (0,0,0);
  strokeWeight(1);
  fill(242,138,34);//color of fish
  triangle(x+20, y+30, x-10, y+45, x-20, y+20);//fish tail
  ellipse (x+20, y+30, 7*s, 4*s);//fish body
  fill(0,0,0);//color for fish eye
  ellipse (x+30, y+30, 1*s, 1*s);//fish eye
}//end drawFish
}//end class fish
