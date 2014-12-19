//Emma Orzech
//actor class: Project02
//Auquarium
//main class
//couldnt get is touching to work...

//instances of actor
Turtle Crush= new Turtle(300,400);
drawSeagull Mike= new drawSeagull(50,50);
Fish flounder= new Fish (200,200);
Fish dory= new Fish (100,300);
Fish pez= new Fish(400,350);
boat rudolph= new boat(250,150);
Water waves= new Water(300,200);
submarine sydney= new submarine (0, 400);
Sun sonny= new Sun (300,0);


//Actor test= new Actor(300,200);

//array for bubbles
drawBubble Bubble[] = new drawBubble [100];

void setup() {
 size (600,400);
 background(0,219,255);//color 11

//test.velocity= 5;
//test.direction= 10;

  sydney.size= 10;  
  
  sonny.size= 25;
  sonny.velocity= 25;
  sonny.direction=10;
  
  Crush.dx= 100;
  Crush.dy= 100;
  Crush.size=10;
  
  Mike.velocity= 2;
  Mike.size= 0.75;
  
  rudolph.velocity=4;
  rudolph.size=3;
  
  flounder.velocity=5;
  flounder.size=5;
  
  dory.velocity=3;
  dory.size=5;
  
  pez.velocity= 10;
  pez.size= 5;
  
  waves.size=10;
  
  //initialize bubble objects
  for (int i=0; i < Bubble.length; i++){
   Bubble[i]= new drawBubble(); 
  }
}//end setup

void draw(){
  background(0,219,255);
  Crush.goTo(300, mouseY);
  Crush.drawTurtle();
  
  sydney.drawSubmarine();
   if (keyPressed){
   if (key == 'a'){
     sydney.direction=0;
     sydney.velocity=-10;
     sydney.move();
   }
   if (key == 's'){
    sydney.direction=0;
    sydney.velocity=10;
    sydney.move();
   }
   if (key == 'w'){
     sydney.velocity= -10;
     sydney.direction= -270;
     sydney.move();
   }   //end car if statement
   if (key == 'z'){
    sydney.direction=90;
    sydney.velocity=10;
    sydney.move(); 
   }
 }
  
  //test.move();
  //test.drawEllipse();
  //test.turn(5);
  //test.bounceEdge();
  
  sonny.move();
  sonny.drawSun();
  sonny.turn(5);
  
  Mike.drawSeagull();
  Mike.move();
  Mike.bounceActorHorizontal(Crush);
  Mike.bounceEdge();
  
  rudolph.drawBoat();
  rudolph.move();
  rudolph.passThrough();
  
  flounder.drawFish();
  flounder.move();
  flounder.passThrough();
  
  dory.drawFish();
  dory.move();
  dory.passThrough();
  
  pez.drawFish();
  pez.move();
  pez.passThrough();
  
  waves.drawWater();
  
  //bubbles
  for (int i=0; i< Bubble.length; i++){
    Bubble[i].act();
}
}
