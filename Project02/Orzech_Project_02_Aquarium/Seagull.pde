//class seagull extends actor

class drawSeagull extends Actor{
  //no new fields
  public drawSeagull(float xPos, float yPos){
    super (xPos, yPos);
  }
  
void drawSeagull() {
float s = size;
  // Feet - they go first because they are 'under' the body
  stroke(0, 0, 0); // black
  strokeWeight(3);
  fill(255, 206, 5); // Orange
  // left foot
  ellipse(x-17*s, y+52*s, 8*s, 15*s);
  ellipse(x-7*s, y+52*s, 8*s, 15*s);
  ellipse(x-12*s, y+52*s, 8*s, 15*s);
  // right foot
    ellipse(x+17*s, y+52*s, 8*s, 15*s);
  ellipse(x+7*s, y+52*s, 8*s, 15*s);
  ellipse(x+12*s, y+52*s, 8*s, 15*s);
  
  // Body 
  fill(203,203,203);
  strokeWeight(3);
  stroke(0, 0, 0);
  ellipse(x, y, 99*s, 100*s);
  
  // Eyeballs
  fill(250, 250, 250); // White
  ellipse(x-12*s, y-22*s, 32*s, 36*s);
  ellipse(x+12*s, y-22*s, 32*s, 36*s);
  stroke(250, 250, 250);
  strokeWeight(0);
  ellipse(x+12*s, y-22*s, 30*s, 34*s);
  ellipse(x-12*s, y-22*s, 30*s, 34*s);
  // pupils
  stroke(0, 0, 0); // reset pen
  strokeWeight(3);
  fill(0, 0, 0);
  ellipse(x-6*s, y-22*s, 10*s, 10*s);
  ellipse(x+6*s, y-22*s, 10*s, 10*s);
  //eye glint
  stroke(250, 250, 250);
  fill(250, 250, 250);
  ellipse(x-8*s, y-24*s, 2*s, 2*s);
  ellipse(x+4*s, y-24*s, 2*s, 2*s);


  // Eyebrows - angry
//  stroke(0, 0, 0);
//  strokeWeight(3);
//  fill(250, 250, 250);
//  triangle(x-5*s, y-40*s, x-40*s, y-45*s, x-15*s, y-46*s);
//  triangle(x+5*s, y-40*s, x+40*s, y-45*s, x+15*s, y-46*s);
  
  // Eyebrows - happy
  stroke(0, 0, 0);
  strokeWeight(3);
  fill(0,0,0);
  triangle(x-5*s, y-45*s, x-40*s, y-40*s, x-15*s, y-50*s);
  triangle(x+5*s, y-45*s, x+40*s, y-40*s, x+15*s, y-50*s);  
  
  // Wings
  stroke(0, 0, 0);
  fill(203,203,203);
  triangle(x-60*s, y-5*s, x-35*s, y-10*s, x-35*s, y+35*s);
  triangle(x+60*s, y-5*s, x+35*s, y-10*s, x+35*s, y+35*s);
  
  // Belly
  stroke(0, 0, 0);
  fill(250, 250, 250);
  strokeWeight(3);
  ellipse(x, y+22*s, 41*s, 50*s);
  
  //beak
  stroke(0, 0, 0); // black
  fill(255, 206, 5); // Orange
  strokeWeight(3);
  triangle(x-5*s, y-8*s, x, y+5, x+5*s, y-8*s);
  arc(x, y-8*s, 10*s, 10*s, PI, PI*2);
  // hide the midline
  stroke(255, 206, 5);
  line(x-4*s, y-8*s, x+4*s, y-8*s);
}
}//end actor
