//bubble class
class drawBubble extends Actor {
  public drawBubble(){
   super();
   x= random(0, width);//start at random x
   y= random(0, 200);
   size= (int) random(3,10);//random size
   fillBlue= 200;//blue
   velocity= 1* (int) random(5,10);//random speed
   direction= 270;
  }//end public bubble
  
  //draw the bubble
  public void drawBubble(){
  fill(fillRed, fillGreen, fillBlue);
  ellipse(x,y,size,size);
  }  
  
  //actions for each bubble
  public void act(){
   drawBubble();
   move(); 
   if (y < 200){
    y= height +20;
    velocity= (int) random(1,10); 
    //direction= (int) random(240,310);
   }
  }
  
  
}//end class bubble
