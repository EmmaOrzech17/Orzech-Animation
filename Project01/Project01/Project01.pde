// Emma Orzech
//Project01


//Define function
void drawSnowman(int x, int y, int s){
 fill( 255,255,255);//white color for body
 ellipse (x, y+6*s, 11*s, 11*s);//lower body
 ellipse(x, y, 8*s, 8*s);//middle body
 ellipse (x, y-5*s, 6*s, 6*s);//head
 fill (0,0,0);//black for eyes
 ellipse (x-1*s,y-6*s,1*s,1*s);//right eye
 ellipse (x+1*s, y-6*s, 1*s, 1*s);//left eye
 fill (245,149,22);//color for nose
 triangle(x+.5*s, y-5*s, x+.5*s, y-4.5*s, x+1.5*s, y-4*s);
 //hat time!
 fill (0,255,0);
 rect (x-1.5*s, y-11.5*s, 3*s, 3*s);
 rect (x-3*s, y-8.5*s, 6*s, 1*s);
 //arc for smile
 fill(255,255,255);
 arc (x, y-4*s, 4*s, 2*s, 0, PI); 
}


void setup(){
  size (600,400);
  background (189,17,216);
  drawSnowman(300,200, 10);
  drawSnowman (400,200,5);
}

void draw(){
  drawSnowman(mouseX, mouseY,5);
}
