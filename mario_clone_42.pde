String msg;
int x, y;
int ySpeed;
int xSpeed;

int bgX;

PImage back;


void setup() {
  size(1300, 700);
back = loadImage("bg.jpg");
bgX = 0;
  textFont(createFont("Comic Sans MS", 50));
  fill(255);

  x = 450;
  y = 200;
}

void draw() {
  background(0);
  image(back,bgX,-2830);
rect(0,820,1000,200);
  
  if(x > 650){
   
  bgX -=8;
  x-=8;
  }
  
  
  
  
  fill(255);
  rect(x, y, 100, 100);




  if (keyPressed) {
    if (key == 'a' || keyCode == LEFT) {
      xSpeed = -8;
    }
    if (key == 'd' || keyCode == RIGHT) {
      xSpeed = 8;
    }
  } else{
    
   xSpeed = 0; 
    
  }
  
  ySpeed+=1;
  

  
  if(y+ySpeed >=820){
   y = 820; 
   ySpeed = 0;
  }
  
  
  //Commit Motion
  x += xSpeed;
  y += ySpeed;
  
  
}

void keyReleased(){
 if(key == ' ' && y ==700){
   
   ySpeed = -40;
   
 }
  
  
}