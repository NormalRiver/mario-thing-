String msg;
int x, y;
int x2, y2;
int x3, y3;
int x4, y4;
int ySpeed;
int xSpeed;
int bgx;
int score;


PImage char1;
PImage char2;
PImage char3;

PImage block1;
PImage block2;
PImage block3;
PImage block4;

PImage pipe;
PImage pipe2;

void setup() {
  size(1300, 700);
  imageMode(CENTER);
  char1 = loadImage("mario 1.jpg");
  char2 =  loadImage("mario 2.jpg");
  char3 =  loadImage("mario 3.png");
  
  block1 = loadImage("block 1.jpg");
  block2 = loadImage("block 2.png");
  block3 = loadImage("block 3.jpg");
  block4 = loadImage("block 4.jpg");

  pipe = loadImage("better pipe.jpg");
  pipe2 = loadImage("bottom pipe.jpg");
  
  score=0;
  x = 450;
  y = 200;
  x2 = 1350;
  y2 = 300;
  x3 = 1650;
  y3 = 300;
  x4 = 2200;
  y4 = 470;

}

void draw() {
  background(0,150,255);
 text(score,1200,50);
  
  if(x > 1050){
  x-=8;
  x2-=8;
  x3 -=8;
  x4 -=8;
  }
 if( x < 50){
   x +=8;
   x2+=8;
   x3+=8;
   x4+=8;
  }
  
  
  
  fill(255);
  
    image(pipe,x4,y4,200,200);
  image(char1,x, y, 100, 100);
  
  image(block1,x3,y3,100,100);
    image(block1,x3-200,y3,100,100);
      image(block1,x3-100,y3-300,100,100);
        image(block1,x3-600,y3,100,100);

 image(block4,x2,y2,100,100);
 image(block4,x2+200,y2,100,100);  
 image(block4,x2+400,y2,100,100);  
  

  
  
  
  
  
  
  
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
if(abs(x-x2)<100 && abs(y-y2)<100){
  xSpeed =10;
  xSpeed =-10;
  ySpeed =-2;
  ySpeed =+2;
  score += 1;
  
  
}
if(abs(x-x2-200)<100 && abs(y-y2)<100){
 xSpeed =0;
  ySpeed =0;
  score += 1;
  
  
}
if(abs(x-x2-400)<100 && abs(y-y2)<100){
 xSpeed=10;
 ySpeed =-2;
  score += 1;  
}



if(abs(x-x3)<100 && abs(y-y3)<100){
  score += 10;
 xSpeed =10;
  ySpeed =-2;
  block1 = block2; 
    }
if(abs(x-x3+200)<100 && abs(y-y3)<100){
  score += 10;
xSpeed =10;
 ySpeed =-2;
  block1 = block2; 
    }
    if(abs(x-x3+600)<100 && abs(y-y3)<100){
  score += 10;
  xSpeed =10;
   ySpeed =-2;
  block1 = block2; 
    }
  if(abs(x-x3+100)<100 && abs(y-y3+300)<100){
  score += 10;
 xSpeed =10;
  ySpeed =-2;
  block1 = block2; 
    }
 if(abs(x-x4)<100 && abs(y-y4)<150){
 ySpeed -=15;
 xSpeed -=10;
  }
  if (keyPressed) {
    if (key == 'a' || keyCode == LEFT) {
      xSpeed = -8;
      char1 = char2;
    }else{ char1 = loadImage("mario 1.jpg");
    }
    if (key == 'd' || keyCode == RIGHT) {
      xSpeed = +8;

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