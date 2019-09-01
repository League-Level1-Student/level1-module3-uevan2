void setup(){
  size(1920, 1080);
}

int x=1000;
int y=500;

void draw(){
  background(#62DEFF);
  y--;
  fill(#FFE51A);
  stroke(#000000);
  ellipse(x, y, 60, 50);
  fill(#FF5B1A);
  ellipse(x+20, y+8, 35, 15);
  line(x+15, y+8, x+36, y+8);
  fill(#FFFFFF);
  ellipse(x+24, y-12, 16, 18);
  ellipse(x+16, y-12, 16, 18);
  ellipse(x-18, y+8, 24, 12);
  fill(000000);
  ellipse(x+22, y-12, 2, 2);
  ellipse(x+30, y-12, 2, 2);
  
  
 
}
