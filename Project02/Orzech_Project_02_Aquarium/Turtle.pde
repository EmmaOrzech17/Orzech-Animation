//turtle class will extend actor
//Emma Orzech

class Turtle extends Actor{
  //no new fields
  public Turtle(float xPos, float yPos){
   super(xPos, yPos);
  }
void drawTurtle(){
  float s= size;
  stroke(0,0,0);
  strokeWeight(2);
  fill(242,90,167);//tongue fillcolor1
  arc(x, y-13*s,1*s,2*s,0,2*PI);//tongue
  strokeWeight(2);//weight 1 of line on tongue
  fill(0,0,0);//line on tongue fillcolor2
  line(x,y-14*s,x,y-13);//line on tongue
  
  stroke(7,82,6);//head line color strokecolor1
  strokeWeight(7);//weight 2 of head
  fill(10,198,52);//color for head and legs fillcolor3
  ellipse (x, y-9*s,6*s,7*s);//head
  
  stroke (0,0,0);
  strokeWeight(3);//weight 3 of legs
  ellipse(x-6*s,y-4*s,5*s,3*s);//leg1
  ellipse (x+6*s, y-4*s, 5*s, 3*s);//leg2
  ellipse(x-6*s,y+4*s,5*s,3*s);//leg3
  ellipse (x+6*s, y+4*s,5*s,3*s);//leg4
  
  fill(90,242,185);//tail color fillcolor4
  triangle(x,y+9*s,x-1*s,y+6*s, x+1*s, y+6*s);//tail
  
  fill(8,21,16);//eye color fillcolor5
  ellipse(x-1*s,y-10.5*s,1*s,1*s);//left eye
  ellipse(x+1*s,y-10.5*s,1*s,1*s);//right eye
  
  fill (18,178,80);//color for body fillcolor7
  ellipse(x,y,130,150);//body
  
  fill(181,35,245);//square on turtle fillcolor8
  stroke(239, 240, 7);// stroke in turtle
  quad(x-2.5*s,y-3*s,x+2.5*s,y-3*s,x+2.5*s,y+3*s,x-2.5*s,y+3*s);//turtle
}//end draw turtle
}//end actor
