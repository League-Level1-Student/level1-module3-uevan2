int hopX = 0;
int hopY = 0;
int sizeX = 1000;
int sizeY = 500;

Car a = new Car(500, 100, 200, 5);
Car b = new Car(200, 200, 150, -7);
Car c = new Car(700, 300, 230, 4);

void setup() {
  size(1000, 500);
}

void draw()  {
  background(0, 0, 0);
  
  fill(5, 170, 8);
  ellipse(500, 475, 25, 25);

  a.display();
  b.display();
  c.display();
  a.carMovement();
  b.carMovement();
  c.carMovement();
}


void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            hopY=hopY-50;
        }
        else if(keyCode == DOWN)
        {
            hopY=Y+50;
        }
        else if(keyCode == RIGHT)
        {
            hopX=hopX+50;
        }
        else if(keyCode == LEFT)
        {
            hopX=hopX-50;
        }
    }
}

boolean barrier(){
  if(hopX >= 50 && hopX <= sizeX-50 && hopY > 50 && hopY <= sizeY){
    return true;
  }
  else {
    return false;
  }
}

class Car{
  private int carX = 0;
  private int carY = 0;
  private int carSize = 0;
  private int carSpeed = 0;
  private int carR = 0;
  private int carG = 0;
  private int carB = 0;
  
  Car(int carX, int carY, int carSize, int carSpeed){
    this.carY=carY;
    this.carX=carX;
    this.carSize=carSize;
    this.carSpeed=carSpeed;
    carR=(int) random(0, 255);
    carG=(int) random(0, 255);
    carB=(int) random(0, 255);
  }
  void display()
  {
    fill(carR,carG,carB);
    rect(carX , carY,  carSize, 50);
  }
  void carMovement()  {
    carX=carX-carSpeed;
  
    if(carX < 0-carSize) {
      carX=width+carSize;
    }
    else if(carX>width+carSize)  {
      carX = 0-carSize;
    }
  }
  int getX(){
    return carX;
  }
  int getY(){
    return carY;
  }
  int getSize(){
    return carSize;
  }
}
