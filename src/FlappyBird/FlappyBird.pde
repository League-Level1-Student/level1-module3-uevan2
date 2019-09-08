int x=1000;
int y=500;
int birbVelocity = 0;
int gravity = 20;
int wingFlapVariable = y+8;
boolean wingFlap = false;
int pipeOneX = 2000;
int pipeOneY = (int)random(300, 800);
int pipeTwoX = 2700;
int pipeTwoY = (int)random(300, 800);
int pipeThreeX = 3400;
int pipeThreeY = (int)random(300, 800);

import ddf.minim.*;
Minim minim;
AudioSample sound;


void setup(){
  size(1920, 1080);
  minim = new Minim (this);
  sound = minim.loadSample("flap2.wav", 128);
}

void draw(){
  background(#62DEFF);
  
  //body
  fill(#FFE51A);
  stroke(#000000);
  ellipse(x, y, 60, 50);
  //beak
  fill(#FF5B1A);
  ellipse(x+20, y+8, 35, 15);
  line(x+15, y+8, x+36, y+8);
  //eyes
  fill(#FFFFFF);
  ellipse(x+24, y-12, 16, 18);
  ellipse(x+16, y-12, 16, 18);
  //wing
  ellipse(x-18, wingFlapVariable, 24, 12);
  //pupils
  fill(000000);
  ellipse(x+22, y-12, 2, 2);
  ellipse(x+30, y-12, 2, 2);
  
  if(mousePressed){
    
    birbVelocity= 30;
    
    sound.trigger();
    
    if (wingFlap){
      wingFlap=false;
      wingFlapVariable=y-4;
    }
  
      else{
     wingFlap=true;
    wingFlapVariable=y+4;
   
    }
  }
  else{
    wingFlapVariable=y-4;
  }
  
  //pipe1
  fill(20, 230, 20);
  rect(pipeOneX, pipeOneY+150, 150, 1000);
  rect(pipeOneX, pipeOneY-1150, 150, 1000);
  
  if(pipeOneX<-25){
    pipeOneX=2000;
    pipeOneY = (int)random(300, 800);
  }
  
  else{
  pipeOneX=pipeOneX-5;
  }
  
  //pipe2
  rect(pipeTwoX, pipeTwoY+150, 150, 1000);
  rect(pipeTwoX, pipeTwoY-1150, 150, 1000);
  
  if(pipeTwoX<-25){
    pipeTwoX=2000;
    pipeTwoY = (int)random(300, 800);
  }
  else{
  pipeTwoX=pipeTwoX-5;
  }
  
  //pipe3
  rect(pipeThreeX, pipeThreeY+150, 150, 1000);
  rect(pipeThreeX, pipeThreeY-1150, 150, 1000);
  
  if(pipeThreeX<-25){
    pipeThreeX=2000;
    pipeThreeY = (int)random(300, 800);
  }
  else{
  pipeThreeX=pipeThreeX-5;
  }
  
  if(birbVelocity>0){
    birbVelocity--;
  }
  
  y=y+gravity;
  y=y-birbVelocity;
 
}
 
