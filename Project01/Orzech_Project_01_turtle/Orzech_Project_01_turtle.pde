//Emma Orzech
//Project 01
//turtle

//turtle
void drawTurtle(int x, int y, int s){
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
  stroke(239, 240, 7);// stroke ln turtle
  quad(x-2.5*s,y-3*s,x+2.5*s,y-3*s,x+2.5*s,y+3*s,x-2.5*s,y+3*s);//turtle
  
  stroke(15,67,206);//line of water strokcolor3
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
  fill(0,219,255,172);//transparent waves across turtles
  arc(x-80,y-30,6*s,5*s, 0, PI);//transparent wave crests
  arc(x+90,y-30,4*s,5*s, 0, PI);
  fill(0,219,255,0);//transparent waves across turtles
  arc(x-20,y-30,6*s,5*s, 0, PI);
  arc(x+40,y-30,6*s,5*s, 0, PI);
}//end drawTurtle

//fishy time
void drawFish(int x, int y, int s) {
  stroke (0,0,0);
  strokeWeight(1);
  fill(242,138,34);//color of fish
  triangle(x+20, y+30, x-10, y+45, x-20, y+20);//fish tail
  ellipse (x+20, y+30, 7*s, 4*s);//fish body
  fill(0,0,0);//color for fish eye
  ellipse (x+30, y+30, 1*s, 1*s);//fish eye
}//end drawFish

//setup
void setup() {
 size (600,400);
 background(0,219,255);//color 11
 drawTurtle(300,200, 10); 
 drawFish(100,300, 5);
 drawFish(200,200,5);
 drawFish(400,300,5);
 drawFish(500,220,5);
}//end setup

//Draw
void draw() {
  //no code
}//end draw
