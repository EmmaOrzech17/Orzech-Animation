//water class will extend water

class Water extends Actor{
 //no new fields
  public Water(float xPos, float yPos){
  super (xPos, yPos);
 } 
void drawWater(){
  float s= size;
  
  stroke(15,67,206);//line of water strokecolor3
  strokeWeight(5);//thickness of water line
  
  fill(22,149,170, 90);//transparent water fillcolor9
  strokeWeight(0);
  rect(x-400, y-30,400*s,30*s);// water
  strokeWeight(5);
  
  fill(0,219,255);//wave crest color
  arc(x-200,y-30,6*s,5*s, 0, PI);//wave crests
  arc(x-260,y-30,6*s,5*s, 0, PI);
  arc(x-140,y-30,6*s,5*s, 0, PI);
  arc(x+140,y-30,6*s,5*s, 0, PI);
  arc(x+200,y-30,6*s,5*s, 0, PI);
  arc(x+260,y-30,6*s,5*s, 0, PI);
  //fill(0,219,255,172);//transparent waves across turtles
  arc(x-80,y-30,6*s,5*s, 0, PI);//transparent wave crests
  arc(x+90,y-30,4*s,5*s, 0, PI);
  //fill(0,219,255,0);//transparent waves across turtles
  arc(x-20,y-30,6*s,5*s, 0, PI);
  arc(x+40,y-30,6*s,5*s, 0, PI);
}

}

