String msg;
int x, y;
int ySpeed;
int xSpeed;
int bgx;

PImage char1;
PImage char2;
PImage char3;

PImage block1;
PImage block2;
PImage block3;
void setup() {
  size(1300, 700);
  char1 = loadImage("mario 1.jpg");
  char2 =  loadImage("mario 2.jpg");
  char3 =  loadImage("mario 3.png");
  
  block1 = loadImage("block 1.jpg");
  block2 = loadImage("block 2.png");
  block3 = loadImage("block 3.jpg");
  

  x = 450;
  y = 200;
  //bgx = 42;   bgX -=8;   bgX +=8;

}

void draw() {
  background(0,150,255);

  
  if(x > 1050){
  x-=8;
  }
 if( x < 50){
   x +=8;
  }
  
  
  
  fill(255);
  image(char1,x, y, 100, 100);
  
 
  
  
  
  
  
  
  
  
  
  
  
  image(block3,0,600,100,100);  
  image(block3,100,600,100,100);  
  image(block3,200,600,100,100);  
  image(block3,300,600,100,100);  
  image(block3,400,600,100,100);  
  image(block3,500,600,100,100);  
  image(block3,600,600,100,100);  
  image(block3,700,600,100,100);
  image(block3,800,600,100,100);  
  image(block3,900,600,100,100);  
  image(block3,1000,600,100,100);  
  image(block3,1100,600,100,100);  
  image(block3,1200,600,100,100);
  image(block3,1300,600,100,100);  
  
if (y < 450){
  char1 = char3;
}



  if (keyPressed) {
    if (key == 'a' || keyCode == LEFT) {
      xSpeed = -8;
      char1 = char2;
    }else{ char1 = loadImage("mario 1.jpg");
    }
    if (key == 'd' || keyCode == RIGHT) {
      xSpeed = 8;

    }
  } else{
    
   xSpeed = 0; 
    
  }
  
  ySpeed+=1;
  

  
  if(y+ySpeed >=500){
   y = 500; 
   ySpeed = 0;
  }
  
  
  //Commit Motion
  x += xSpeed;
  y += ySpeed;
  
  

}

void keyReleased(){
 if(key == 'w'){
   
   ySpeed = -30;
   }
  
  
}









  






















































































































































//j