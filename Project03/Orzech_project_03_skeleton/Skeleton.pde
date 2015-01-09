//skeleton will extend actor

class Skeleton extends Actor{
  //fields for skeleton
  Segment neck;
  Segment body;
  Segment head;
  
  //right side
  Segment rshoulder;
  Segment ruarm;
  Segment rlowarm;
  Segment ruleg;
  Segment rlowleg;
  Segment rfoot;
  
  //left side
  Segment lshoulder;
  Segment luarm;
  Segment llowarm;
  Segment luleg;
  Segment llowleg;
  Segment lfoot;
  
  public Skeleton(float xPos, float yPos){
    super(xPos, yPos);

    //initialize segments
    body= new Segment(xPos, yPos, -90, 100);
    body.weight= 15;
    body.setPenColor(242, 134, 17);
    
    //legs
    luleg= new Segment(xPos, yPos, 45, 50);
    luleg.weight= 12;
    luleg.setPenColor(242, 190, 17);
    
    ruleg= new Segment(xPos, yPos, -200, 50);
    ruleg.weight= 12;
    ruleg.setPenColor(242, 190, 17);
    
    llowleg= new Segment(luleg.getEndX(), luleg.getEndY(), 90, 75);
    llowleg.weight= 10;
    llowleg.setPenColor(220,133,252);
    
    rlowleg= new Segment(ruleg.getEndX(), ruleg.getEndY(), 90,75);
    rlowleg.weight= 10;
    rlowleg.setPenColor(220,133,252);
    
    lfoot= new Segment(llowleg.getEndX(), llowleg.getEndY(), 20, 20);
    lfoot.weight= 15;
    lfoot.setPenColor(8, 173, 252);
    
    rfoot= new Segment(rlowleg.getEndX(), rlowleg.getEndY(), 20, 20);
    rfoot.weight= 15;
    rfoot.setPenColor(8,173,252);
    
    //arms
    lshoulder= new Segment(body.getEndX(), body.getEndY(), 0, 20);
    lshoulder.weight= 13;
    lshoulder.setPenColor(31,252,32);
    
    rshoulder= new Segment(body.getEndX(), body.getEndY(), -180, 20);
    rshoulder.weight= 13;
    rshoulder.setPenColor(31,252,32);
    
    luarm= new Segment(lshoulder.getEndX(), lshoulder.getEndY(), 45, 25);
    luarm.weight= 10;
    luarm.setPenColor(40,165,41);
    
    ruarm= new Segment(rshoulder.getEndX(), rshoulder.getEndY(), 200, 25);
    ruarm.weight= 10;
    ruarm.setPenColor(40,165,41);
    
    llowarm= new Segment(luarm.getEndX(), luarm.getEndY(), 20, 20);
    llowarm.weight= 20;
    llowarm.setPenColor(44,242,121);
    
    rlowarm= new Segment(ruarm.getEndX(), luarm.getEndY(), 220, 20);
    rlowarm.weight= 20;
    rlowarm.setPenColor(44,242,121); 
    
  head= new Segment(xPos, 75, 30, 30);
  //head= new Segment (body.getEndX(), body.getEndY(), 30, 30);
  head.weight= -20;
  head.setPenColor(250,255,0);
  }
  
  public void drawFrame(){
   //call segment.drawline() for all the body parts
   body.x= x;
   body.y= y;
  body.drawLine();
   
  luleg.goTo(body.x, body.y); 
  luleg.drawLine();
  
  ruleg.goTo(body.x, body.y);
  ruleg.drawLine();
  
  llowleg.goTo(luleg.getEndX(), luleg.getEndY());
  llowleg.drawLine();
  
  lfoot.goTo(llowleg.getEndX(), llowleg.getEndY());
  lfoot.drawLine();
  
  rlowleg.goTo(ruleg.getEndX(), ruleg.getEndY());
  rlowleg.drawLine();
  
  rfoot.goTo(rlowleg.getEndX(), rlowleg.getEndY());
  rfoot.drawLine();
  
  lshoulder.goTo(body.getEndX(), body.getEndY());
  lshoulder.drawLine();
  
  rshoulder.goTo(body.getEndX(), body.getEndY());
  rshoulder.drawLine();
  
  luarm.goTo(lshoulder.getEndX(), lshoulder.getEndY());
  luarm.drawLine();
  
  ruarm.goTo(rshoulder.getEndX(), rshoulder.getEndY());
  ruarm.drawLine();
  
  head.drawEllipse(); 
  head.goTo(body.getEndX(), body.getEndY()-33);
  
  llowarm.goTo(luarm.getEndX(), luarm.getEndY());
  llowarm.drawLine();
  
  rlowarm.goTo(ruarm.getEndX(), ruarm.getEndY());
  rlowarm.drawLine();
  
  
  }
  
  //act function
  public void act(){
    x= mouseX;
    y=mouseY;
   drawFrame();
   luleg.turn(5);
   ruleg.turn(-5);
  
   rlowarm.drawLine();
   
   if(keyPressed){
   if (key == 'a'){
      rlowarm.direction= 200;
      rlowarm.velocity= 20;
      rlowarm.move();
   }
   if(key == 'd'){
  rlowarm.direction=-20;
  rlowarm.velocity= 20;
  rlowarm.move();
   }  
   }
   
   if (key == 's'){
     mySkeleton.llowarm.turn(10); 
   }
   
   if( key == 'w'){
    mySkeleton.luarm.turn(5); 
   }
  }  
  
}//end class skeleton
