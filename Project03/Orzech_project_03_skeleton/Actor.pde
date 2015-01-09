//emma orzech
//actor class

class Actor{
  //fields
  float x;
  float y;
  int fillRed= 0; //colors for people
  int fillGreen= 0;
  int fillBlue= 0;
  int penRed= 0; //colors for the pen
  int penGreen= 0;
  int penBlue= 0;
  float size= 50;
  int wid= 50; //width
  int hei= 50; //height
  float dx= 0;
  float dy= 0;
  
  //constructor 1
  public Actor (float xPos, float yPos) {
    x= xPos;
    y= yPos;
  }// end public actor
  
  //constructor 2
  public Actor (){
    
  }//end public actor 2
  
  void setColor(int r, int g, int b){
    fillRed= r;
    fillGreen= g;
    fillBlue= b;
  }//end setcolor
  
  void setPenColor(int r, int g, int b){
  penRed= r;
  penGreen= g;
  penBlue= b;
  }//end setpencolor
  
  void move(){
    computeVector();
    x= x + dx;
    y= y + dy;
  }//end void move
  
  void goTo(float xPos, float yPos){
    x= xPos;
    y= yPos;
  }//end goto
  
  //bounce edge
  void bounceEdge(){
    if (x> width || x< 0){
      //dx= dx* -1;
      direction += 2* (90- direction);
    }
    if (y> height || y< 0){
      //dy= dy* -1;
      direction += 2* (0-direction);
    }
  }//end bounceEdge
  void block(int blockage) {
    
    if (x >blockage) {
      dx =0;
    }
  }
  public boolean isTouching(Actor a){
     boolean xTouch= ((x < a.x+a.wid) && (x > a.x));
     boolean yTouch= ((y< a.y +a.hei) && (y> a.y));
     if (xTouch && yTouch){
      return true; 
     }
     else{
       return false;
     }
  }
  
  public void bounceActorHorizontal(Actor a) {
    if (isTouching(a)) {
      direction= direction* -1;
    }
  }
  void passThrough(){
   if (x>width){
    x= 0;
   } 
    
  }
  //setDX and set DY
  void setDX(int xVel) {
    dx= xVel;
  }
  
  void setDY(int yVel){
   dy= yVel; 
  }
  
  //velocity and direction
  float velocity= 0;
  float direction= 0;
  
  //rectangle function
  void drawRect(){
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    rect(x, y, wid, hei);
  }//end drawrect
  
  //ellipse function
  void drawEllipse(){
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    ellipse(x, y, wid, hei);
  }//end drawellipse
  
  //triangle function
  void drawTriangle(){
    stroke(penRed, penGreen, penBlue);
    fill(fillRed, fillGreen, fillBlue);
    triangle(x, y, x+wid, y, x+wid, y-hei);
  }//end drawtriangle
  
  public void computeVector(){
    dx= velocity* cos(radians(direction));
    dy= velocity* sin(radians(direction));
  }//end compute vector
  
  public void turn(float t){
   direction += t;//changes direction of the object by t 
  }//end turn
}//end actor
